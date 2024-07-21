import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'dart:io';
import 'dart:isolate';

void processInIsolate(Map<String, dynamic> data) {
  final sendPort = data['sendPort'] as SendPort;
  final bookHtml = data['bookHtml'] as String;
  final name = data['name'] as String;
  final result = generateFullBookImport(bookHtml, name);
  sendPort.send(result);
}

void main() async {
  var currentDirectoryPath = Directory.current.resolveSymbolicLinksSync();
  final directory = Directory('$currentDirectoryPath/../e_texts/html').absolute;
  final List<FileSystemEntity> files = directory.listSync();

  final outputDirectory =
      Directory('$currentDirectoryPath/../e_texts/sql').absolute;
  if (!outputDirectory.existsSync()) {
    outputDirectory.createSync(recursive: true);
  }

  final stopwatch = Stopwatch()..start();
  print('Starting processing of ${files.length} files...');

  await Future.wait(files.asMap().entries.map((entry) async {
    final index = entry.key;
    final file = entry.value;
    if (file is File) {
      final bookHtml = await File(file.path).readAsString();
      final receivePort = ReceivePort();
      await Isolate.spawn(
        processInIsolate,
        {
          'sendPort': receivePort.sendPort,
          'bookHtml': bookHtml,
          'name': 'annya_sadda_${index + 20}'
        }
      );
      final fullBookImport = await receivePort.first;
      final outputFilePath =
          '${outputDirectory.path}/${file.uri.pathSegments.last.replaceAll('.html', '.sql')}';
      await File(outputFilePath).writeAsString(fullBookImport);
    }
  }));

  stopwatch.stop();
  print('Total processing time: ${stopwatch.elapsed}');
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
    createTocSQLImportStatements(bookId, pagesWithContentWithParagraphsWithToc)
        .join('\n'),
    "DELETE FROM paragraphs where book_id='$bookId';",
    createParagraphsSQLImportStatements(
            bookId, pagesWithContentWithParagraphsWithToc)
        .join('\n'),
    "DELETE FROM pages where bookid='$bookId';",
    createPageSQLImportStatements(bookId, pagesWithContentWithParagraphsWithToc)
        .join('\n')
  ].join('\n');
}