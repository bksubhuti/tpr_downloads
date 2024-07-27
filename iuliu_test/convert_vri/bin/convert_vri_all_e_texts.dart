import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'dart:io';
import 'dart:isolate';
import 'package:archive/archive.dart';

void main() async {
  final currentDirectoryPath = Directory.current.resolveSymbolicLinksSync();
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

  await Future.wait([
    Category(
      id: "annya_sangayana_puccha_vissajjana",
      name: "Saṅgāyana-puccha vissajjanā",
      books: [
        "e0901n.nrf.html",
        "e0902n.nrf.html",
        "e0903n.nrf.html",
        "e0904n.nrf.html",
        "e0905n.nrf.html",
        "e0906n.nrf.html",
        "e0907n.nrf.html"
      ],
      additionalSql: "",
    ),
    Category(
      id: "annya_ledi_sayadaw",
      name: "Leḍī sayāḍo gantha-saṅgaho",
      books: [
        "e0201n.nrf.html",
        "e0301n.nrf.html",
        "e0401n.nrf.html",
        "e0501n.nrf.html"
      ],
      additionalSql: """
DELETE FROM books WHERE id IN ('annya_sadda_10', 'annya_bi_07');
DELETE FROM tocs WHERE book_id IN ('annya_sadda_10', 'annya_bi_07');
DELETE FROM paragraphs WHERE book_id IN ('annya_sadda_10', 'annya_bi_07');
DELETE FROM pages WHERE bookid IN ('annya_sadda_10', 'annya_bi_07');""",
    ),
    Category(
      id: "annya_buddha_vandana_gantha_sanggaho",
      name: "Buddha-vandanā gantha-saṅgaho",
      books: [
        "e0601n.nrf.html",
        "e0602n.nrf.html",
        "e0603n.nrf.html",
        "e0604n.nrf.html",
        "e0605n.nrf.html",
        "e0606n.nrf.html",
        "e0607n.nrf.html"
      ],
      additionalSql: "",
    ),
    Category(
      id: "annya_vamsa_gantha_sanggaho",
      name: "Vaṃsa-gantha-saṅgaho",
      books: [
        "e0701n.nrf.html",
        "e0703n.nrf.html",
        "e0702n.nrf.html",
      ],
      additionalSql: "",
    ),
  ].map((Category category) async {
    await Future.wait(category.books.map(
        (book) => processBook(book, category, htmlDirectory, sqlDirectory)));
    final fileContents = await readSqlFiles(category.books, sqlDirectory);
    await createSqlFile(category, fileContents, extensionsDirectory);
    await createZipFile(category, extensionsDirectory);
  }));
}

class Category {
  final String id;
  final String name;
  final List<String> books;
  final String additionalSql;

  Category({
    required this.id,
    required this.name,
    required this.books,
    required this.additionalSql,
  });
}

Future<void> processBook(String book, Category category,
    Directory htmlDirectory, Directory sqlDirectory) async {
  final file = File('${htmlDirectory.path}/$book');
  final bookHtml = await file.readAsString();
  final bookId =
      "${category.id}_${file.uri.pathSegments.last.replaceAll(RegExp(r'\..*'), '')}";

  final fullBookImport =
      await computeBookImportSQL(bookHtml, bookId, category.id);

  final outputFilePath =
      '${sqlDirectory.path}/${file.uri.pathSegments.last.replaceAll('.html', '.sql')}';
  await File(outputFilePath).writeAsString(fullBookImport);
}

Future<String> computeBookImportSQL(
    String bookHtml, String bookId, String categoryId) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(calculateBookImportSQLInIsolate, {
    'sendPort': receivePort.sendPort,
    'bookHtml': bookHtml,
    'bookId': bookId,
    'categoryId': categoryId
  });
  return await receivePort.first;
}

void calculateBookImportSQLInIsolate(Map<String, dynamic> data) {
  final sendPort = data['sendPort'] as SendPort;
  final bookHtml = data['bookHtml'] as String;
  final bookId = data['bookId'] as String;
  final categoryId = data['categoryId'] as String;
  final result = calculateBookImportSQL(bookHtml, bookId, categoryId);
  sendPort.send(result);
}

String calculateBookImportSQL(
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

Future<List<String>> readSqlFiles(
    List<String> books, Directory sqlDirectory) async {
  return Future.wait(books.map((file) =>
      File('${sqlDirectory.path}/${file.replaceAll('.html', '.sql')}')
          .readAsString()));
}

Future<void> createSqlFile(Category category, List<String> fileContents,
    Directory extensionsDirectory) async {
  final sqlFile = File("${extensionsDirectory.path}/${category.id}.sql");
  await sqlFile.writeAsString([
    category.additionalSql,
    createCategorySQLImportStatement(category.id, category.name),
    ...fileContents
  ].join('\n').trimLeft());
}

Future<void> createZipFile(
    Category category, Directory extensionsDirectory) async {
  final sqlFile = File("${extensionsDirectory.path}/${category.id}.sql");
  final zipFile = File("${extensionsDirectory.path}/${category.id}.zip");
  await createZipFromFile(sqlFile, zipFile);
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
