import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'dart:io';

void main() {
  var currentDirectoryPath = Directory.current.resolveSymbolicLinksSync();
  final directory = Directory('$currentDirectoryPath/../e_texts/html').absolute;
  final List<FileSystemEntity> files = directory.listSync();

  final outputDirectory =
      Directory('$currentDirectoryPath/../e_texts/sql').absolute;
  if (!outputDirectory.existsSync()) {
    outputDirectory.createSync(recursive: true);
  }

  for (int i = 0; i < files.length; i++) {
    final file = files[i];
    final count = 20 + i;
    final bookId = 'annya_sadda_$count';
    final bookHtml = File(file.path).readAsStringSync();
    final pagesWithContent = extractMyanmarEditionPagesFromVriHtml(bookHtml);
    final pagesWithContentWithParagraphs =
        addParagraphsToPages(pagesWithContent);
    final pagesWithContentWithParagraphsWithToc =
        addTocsToPagesWithParagraphs(pagesWithContentWithParagraphs);
    final bookInfo = extractBookInfo(pagesWithContentWithParagraphsWithToc);

    final booksTableImport = createBookSQLImportStatement(bookId, bookInfo);
    final tocsTableImport = createTocSQLImportStatements(
            bookId, pagesWithContentWithParagraphsWithToc)
        .join('\n');
    final paragraphsTableImport = createParagraphsSQLImportStatements(
            bookId, pagesWithContentWithParagraphsWithToc)
        .join('\n');
    final pagesTableImport = createPageSQLImportStatements(
            bookId, pagesWithContentWithParagraphsWithToc)
        .join('\n');

    final fullBookImport = [
      "DELETE FROM books where id='$bookId';",
      booksTableImport,
      "DELETE FROM tocs where book_id='$bookId';",
      tocsTableImport,
      "DELETE FROM paragraphs where book_id='$bookId';",
      paragraphsTableImport,
      "DELETE FROM pages where bookid='$bookId';",
      pagesTableImport
    ].join('\n');

    final outputFilePath =
        '${outputDirectory.path}/${file.uri.pathSegments.last.replaceAll('.html', '.sql')}';
    File(outputFilePath).writeAsStringSync(fullBookImport);
  }
}
