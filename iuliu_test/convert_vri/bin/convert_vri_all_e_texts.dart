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
  final extensionsSqlDirectory =
      Directory('$currentDirectoryPath/../e_texts/extensions/sql').absolute;
  final extensionsZipDirectory =
      Directory('$currentDirectoryPath/../e_texts/extensions/zip').absolute;
  final releaseDirectory =
      Directory('$currentDirectoryPath/../../release_zips').absolute;

  if (!sqlDirectory.existsSync()) {
    sqlDirectory.createSync(recursive: true);
  }

  if (!extensionsSqlDirectory.existsSync()) {
    extensionsSqlDirectory.createSync(recursive: true);
  }

  if (!extensionsZipDirectory.existsSync()) {
    extensionsZipDirectory.createSync(recursive: true);
  }

  if (!releaseDirectory.existsSync()) {
    throw FileSystemException(
        'Release directory does not exist', releaseDirectory.path);
  }

  await Future.wait([
    Category(
      id: "annya_visuddhimagga",
      name: "Visuddhimagga",
      books: [
        "e0101n.mul.html",
        "e0102n.mul.html",
        "e0103n.att.html",
        "e0104n.att.html",
        "e0105n.nrf.html",
      ],
      additionalSql: "",
    ),
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
      id: "annya_buddha_vandana_gantha_sangaho",
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
      id: "annya_vamsa_gantha_sangaho",
      name: "Vaṃsa-gantha-saṅgaho",
      books: [
        "e0701n.nrf.html",
        "e0703n.nrf.html",
        "e0702n.nrf.html",
      ],
      additionalSql: "",
    ),
    Category(
      id: "annya_byakarana_gantha_sangaho",
      name: "Byākaraṇa gantha-saṅgaho",
      books: [
        "e0802n.nrf.html",
        "e0801n.nrf.html",
        "e0803n.nrf.html",
        "e0804n.nrf.html",
        "e0805n.nrf.html",
        "e0806n.nrf.html",
        "e0807n.nrf.html",
        "e0808n.nrf.html",
        "e0809n.nrf.html",
        "e0810n.nrf.html",
        "e0811n.nrf.html",
        "e0812n.nrf.html",
        "e0813n.nrf.html",
      ],
      additionalSql: "",
    ),
    Category(
      id: "annya_niti_gantha_sangaho",
      name: "Nīti-gantha-saṅgaho",
      books: [
        "e1005n.nrf.html",
        "e1006n.nrf.html",
        "e1007n.nrf.html",
        "e1004n.nrf.html",
        "e1003n.nrf.html",
        "e1001n.nrf.html",
        "e1002n.nrf.html",
        "e1009n.nrf.html",
        "e1010n.nrf.html",
        "e1008n.nrf.html",
      ],
      additionalSql: "",
    ),
    Category(
      id: "annya_pakinaka_gantha_sangaho",
      name: "Pakiṇṇaka-gantha-saṅgaho",
      books: [
        "e1101n.nrf.html",
        "e1102n.nrf.html",
        "e1103n.nrf.html",
      ],
      additionalSql: "",
    ),
    Category(
      id: "annya_sihala_gantha_sangaho",
      name: "Sihaḷa-gantha-saṅgaho",
      books: [
        "e1201n.nrf.html",
        "e1202n.nrf.html",
        "e1203n.nrf.html",
        "e1204n.nrf.html",
        "e1205n.nrf.html",
        "e1206n.nrf.html",
        "e1207n.nrf.html",
        "e1208n.nrf.html",
        "e1209n.nrf.html",
        "e1210n.nrf.html",
        "e1211n.nrf.html",
        "e1212n.nrf.html",
        "e1213n.nrf.html",
        "e1214n.nrf.html",
        "e1215n.nrf.html",
      ],
      additionalSql: "",
    ),
  ].map((Category category) async {
    await Future.wait(category.books.map(
        (book) => processBook(book, category, htmlDirectory, sqlDirectory)));
    final fileContents = await readSqlFiles(category.books, sqlDirectory);
    await createSqlFile(category, fileContents, extensionsSqlDirectory);
    await createZipFile(
        category, extensionsSqlDirectory, extensionsZipDirectory);
  }));

  final extensionsZipFiles = extensionsZipDirectory.listSync();
  for (var file in extensionsZipFiles) {
    if (file is! File) continue;
    final fileName = file.uri.pathSegments.last;
    final destinationFile = File('${releaseDirectory.path}/$fileName');
    await file.copy(destinationFile.path);
  }
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
    Directory extensionsSqlDirectory) async {
  final sqlFile = File("${extensionsSqlDirectory.path}/${category.id}.sql");
  await sqlFile.writeAsString([
    category.additionalSql,
    createCategorySQLImportStatement(category.id, category.name),
    ...fileContents
  ].join('\n').trimLeft());
}

Future<void> createZipFile(Category category, Directory extensionsSqlDirectory,
    Directory extensionsZipDirectory) async {
  final sqlFile = File("${extensionsSqlDirectory.path}/${category.id}.sql");
  final zipFile = File("${extensionsZipDirectory.path}/${category.id}.zip");
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
