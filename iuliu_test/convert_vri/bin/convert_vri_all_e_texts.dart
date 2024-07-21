import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'dart:io';
import 'dart:isolate';
import 'package:archive/archive.dart';

void main() async {
  var currentDirectoryPath = Directory.current.resolveSymbolicLinksSync();
  final htmlDirectory =
      Directory('$currentDirectoryPath/../e_texts/html').absolute;
  final sqlDirectory =
      Directory('$currentDirectoryPath/../e_texts/sql').absolute;
  final extensionsDirectory =
      Directory('$currentDirectoryPath/../e_texts/extensions').absolute;

  if (!sqlDirectory.existsSync()) {
    sqlDirectory.createSync(recursive: true);
  }

  if (!extensionsDirectory.existsSync()) {
    extensionsDirectory.createSync(recursive: true);
  }

  await processCategories([
    Category(
      id: "annya_ledi_sayadaw",
      name: "Leḍī sayāḍo gantha-saṅgaho",
      books: [
        "e0201n.nrf.html",
        "e0301n.nrf.html",
        "e0401n.nrf.html",
        "e0501n.nrf.html"
      ],
    ),
    Category(
      id: "annya_buddha_vandana",
      name: "Buddha-vandanā gantha-saṅgaho",
      books: [
        "e0901n.nrf.html",
        "e0902n.nrf.html",
        "e0903n.nrf.html",
        "e0904n.nrf.html",
        "e0905n.nrf.html",
        "e0906n.nrf.html",
        "e0907n.nrf.html"
      ],
    ),
  ], htmlDirectory, sqlDirectory, extensionsDirectory);
}

Future<void> processCategories(
    List<Category> categories,
    Directory htmlDirectory,
    Directory sqlDirectory,
    Directory extensionsDirectory) async {
  await Future.wait(categories.map((category) async {
    await processFiles(
        category.id, category.books, htmlDirectory, sqlDirectory);
    List<String> fileContents = await Future.wait(category.books.map((file) =>
        File('${sqlDirectory.path}/${file.replaceAll('.html', '.sql')}')
            .readAsString()));
    final sqlFile = File("${extensionsDirectory.path}/${category.id}.sql");
    await sqlFile.writeAsString([
      createCategorySQLImportStatement(category.id, category.name),
      ...fileContents
    ].join('\n'));
    final zipFile = File("${extensionsDirectory.path}/${category.id}.zip");
    await createZipFromFile(sqlFile, zipFile);
  }));
}

Future<void> processFiles(String categoryId, List<String> books,
    Directory htmlDirectory, Directory sqlDirectory) async {
  final inputFiles =
      books.map((book) => File('${htmlDirectory.path}/$book')).toList();
  await Future.wait(inputFiles.map((file) async {
    final bookHtml = await file.readAsString();
    final receivePort = ReceivePort();
    await Isolate.spawn(processInIsolate, {
      'sendPort': receivePort.sendPort,
      'bookHtml': bookHtml,
      'bookId':
          "${categoryId}_${file.uri.pathSegments.last.replaceAll(RegExp(r'\..*'), '')}",
      'categoryId': categoryId
    });
    final fullBookImport = await receivePort.first;
    final outputFilePath =
        '${sqlDirectory.path}/${file.uri.pathSegments.last.replaceAll('.html', '.sql')}';
    await File(outputFilePath).writeAsString(fullBookImport);
  }));
}

void processInIsolate(Map<String, dynamic> data) {
  final sendPort = data['sendPort'] as SendPort;
  final bookHtml = data['bookHtml'] as String;
  final bookId = data['bookId'] as String;
  final categoryId = data['categoryId'] as String;
  final result = generateFullBookImport(bookHtml, bookId, categoryId);
  sendPort.send(result);
}

String generateFullBookImport(
    String bookHtml, String bookId, String categoryId) {
  final pagesWithContent = extractMyanmarEditionPagesFromVriHtml(bookHtml);
  final pagesWithContentWithParagraphs = addParagraphsToPages(pagesWithContent);
  final pagesWithContentWithParagraphsWithToc =
      addTocsToPagesWithParagraphs(pagesWithContentWithParagraphs);
  final bookInfo = extractBookInfo(pagesWithContentWithParagraphsWithToc);

  return [
    "DELETE FROM books where id='$bookId';",
    createBookSQLImportStatement(bookId, categoryId, bookInfo),
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
