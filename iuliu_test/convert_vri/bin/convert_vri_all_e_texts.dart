import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'dart:io';
import 'dart:isolate';
import 'package:archive/archive.dart';

void main() async {
  var currentDirectoryPath = Directory.current.resolveSymbolicLinksSync();
  final directory = Directory('$currentDirectoryPath/../e_texts/html').absolute;
  final List<FileSystemEntity> files = directory.listSync();
  final outputDirectory =
      Directory('$currentDirectoryPath/../e_texts/sql').absolute;
  final extensionsDirectory =
      Directory('$currentDirectoryPath/../e_texts/extensions').absolute;

  if (!outputDirectory.existsSync()) {
    outputDirectory.createSync(recursive: true);
  }

  if (!extensionsDirectory.existsSync()) {
    extensionsDirectory.createSync(recursive: true);
  }

  print('Starting processing of ${files.length} files...');
  final stopwatch = Stopwatch()..start();
  await processFiles(files, outputDirectory);
  stopwatch.stop();
  print('Total processing time: ${stopwatch.elapsed}');

  await Future.wait([
    Category(
      id: "annya_ledi_sayadaw",
      name: "Leḍī sayāḍo gantha-saṅgaho",
      books: [
        "e0201n.nrf.sql",
        "e0301n.nrf.sql",
        "e0401n.nrf.sql",
        "e0501n.nrf.sql"
      ],
    ),
    Category(
      id: "annya_buddha_vandana",
      name: "Buddha-vandanā gantha-saṅgaho",
      books: [
        "e0901n.nrf.sql",
        "e0902n.nrf.sql",
        "e0903n.nrf.sql",
        "e0904n.nrf.sql",
        "e0905n.nrf.sql",
        "e0906n.nrf.sql",
        "e0907n.nrf.sql"
      ],
    ),
  ].map((category) async {
    List<String> fileContents = await Future.wait(category.books.map((file) => File('${outputDirectory.path}/$file').readAsString()));
    final sqlFile = File("${extensionsDirectory.path}/${category.id}.sql");
    await sqlFile.writeAsString([
      createCategorySQLImportStatement(category.id, category.name),
      ...fileContents
    ].join('\n'));
    final zipFile = File("${extensionsDirectory.path}/${category.id}.zip");
    await createZipFromFile(sqlFile, zipFile);
  }));
}

Future<void> processFiles(
    List<FileSystemEntity> files, Directory outputDirectory) async {
  await Future.wait(files.asMap().entries.map((entry) async {
    final index = entry.key;
    final file = entry.value as File;
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

class Category {
  final String id;
  final String name;
  final List<String> books;

  Category({
    required this.id,
    required this.name,
    required this.books,
  });
}

Future<void> createZipFromFile(File sourceFile, File zipFile) async {
  final archive = Archive();
  final bytes = await sourceFile.readAsBytes();
  final archiveFile =
      ArchiveFile(sourceFile.path.split('/').last, bytes.length, bytes);
  archive.addFile(archiveFile);
  final zipData = ZipEncoder().encode(archive);
  await zipFile.writeAsBytes(zipData!);
}
