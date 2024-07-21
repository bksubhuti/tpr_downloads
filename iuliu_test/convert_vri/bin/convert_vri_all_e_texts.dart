import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'dart:io';
import 'dart:isolate';

void main() async {
  var currentDirectoryPath = Directory.current.resolveSymbolicLinksSync();
  final directory = Directory('$currentDirectoryPath/../e_texts/html').absolute;
  final List<FileSystemEntity> files = directory.listSync();
  final outputDirectory =
      Directory('$currentDirectoryPath/../e_texts/sql').absolute;

  print('Starting processing of ${files.length} files...');
  final stopwatch = Stopwatch()..start();
  await processFiles(files, outputDirectory);
  stopwatch.stop();
  print('Total processing time: ${stopwatch.elapsed}');
}

Future<void> processFiles(
    List<FileSystemEntity> files, Directory outputDirectory) async {
  if (!outputDirectory.existsSync()) {
    outputDirectory.createSync(recursive: true);
  }

  await Future.wait(files.asMap().entries.map((entry) async {
    final index = entry.key;
    final file = entry.value;
    if (file is File) {
      final bookHtml = await File(file.path).readAsString();
      final receivePort = ReceivePort();
      await Isolate.spawn(processInIsolate, {
        'sendPort': receivePort.sendPort,
        'bookHtml': bookHtml,
        'name': 'annya_sadda_${index + 20}'
      });
      final fullBookImport = await receivePort.first;
      final outputFilePath =
          '${outputDirectory.path}/${file.uri.pathSegments.last.replaceAll('.html', '.sql')}';
      await File(outputFilePath).writeAsString(fullBookImport);
    }
  }));
}

void processInIsolate(Map<String, dynamic> data) {
  final sendPort = data['sendPort'] as SendPort;
  final bookHtml = data['bookHtml'] as String;
  final name = data['name'] as String;
  final result = generateFullBookImport(bookHtml, name);
  sendPort.send(result);
}

String generateFullBookImport(String bookHtml, String bookId) {
  final pagesWithContent = extractMyanmarEditionPagesFromVriHtml(bookHtml);
  final pagesWithContentWithParagraphs = addParagraphsToPages(pagesWithContent);
  final pagesWithContentWithParagraphsWithToc =
      addTocsToPagesWithParagraphs(pagesWithContentWithParagraphs);
  final bookInfo = extractBookInfo(pagesWithContentWithParagraphsWithToc);

  return [
    "DELETE FROM books where id='$bookId';",
    createBookSQLImportStatement(bookId, bookInfo),
    "DELETE FROM tocs where book_id='$bookId';",
    ...createTocSQLImportStatements(
        bookId, pagesWithContentWithParagraphsWithToc),
    "DELETE FROM paragraphs where book_id='$bookId';",
    ...createParagraphsSQLImportStatements(
        bookId, pagesWithContentWithParagraphsWithToc),
    "DELETE FROM pages where bookid='$bookId';",
    ...createPageSQLImportStatements(
        bookId, pagesWithContentWithParagraphsWithToc)
  ].join('\n');
}
