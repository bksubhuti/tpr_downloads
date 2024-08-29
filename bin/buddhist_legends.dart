import 'dart:io';
import 'dart:convert';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

void main() async {
  final directory = Directory('Buddhist-Legends');
  final List<FileSystemEntity> files = await directory.list().toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  var pagesSql = StringBuffer();
  var tocsSql = StringBuffer();
  var deletesSql = StringBuffer();

  var bookID = "annya_pe_kn_dhpa1";
  var categoryID = "annya_pe_kn";
  int pageNum = 0;

  deletesSql.writeln("Begin Transaction;");
  deletesSql.writeln("DELETE from tocs where book_id = '$bookID';");
  deletesSql.writeln("DELETE from pages where bookid = '$bookID';");
  deletesSql.writeln("DELETE from books where id = '$bookID';");
  deletesSql.writeln("DELETE from category where id = '$categoryID';");
  deletesSql.writeln("DELETE from fts_pages where bookid = '$bookID';");
  deletesSql.writeln("COMMIT;");

  pagesSql.writeln("Begin Transaction;");

  for (var fileEntity in files) {
    if (fileEntity is File && fileEntity.path.endsWith('.html')) {
      pageNum++;
      var file = File(fileEntity.path);
      var content = await file.readAsString();
      var document = parse(content);

      var titleElement = document.querySelector(".t23");
      var chapterElement = document.querySelector(".h11");

      // Write chapter to TOC first, if present
      if (chapterElement != null) {
        var chapter = chapterElement.text;
        tocsSql.writeln(
            '''INSERT INTO tocs (book_id, name, type, page_number) VALUES ('$bookID', '$chapter', 'chapter', $pageNum);''');
      }

      // Then, write title to TOC
      if (titleElement != null) {
        var title = titleElement.text;
        tocsSql.writeln(
            '''INSERT INTO tocs (book_id, name, type, page_number) VALUES ('$bookID', '$title', 'title', $pageNum);''');
      }

      var pageContent = '';
      int linesInPage = 1;
      var elements = document.querySelectorAll("h2, p, .t23");

      for (var element in elements) {
        if (element.className == 't23') {
          pageContent += '<h2>${element.text}</h2>';
        } else if (element.localName == 'p') {
          pageContent += '<p>${element.text}</p>';
        } else if (element.localName == 'h2' && element.className != 'h20') {
          pageContent += '<h2>${element.text}</h2>';
        } else {
          pageContent += element.text;
        }
        linesInPage++;

        if (linesInPage > 35) {
          pagesSql.writeln(
              '''INSERT INTO pages (bookid, page, content, paranum) VALUES ('$bookID', $pageNum, '$pageContent', '-$pageNum-');''');
          linesInPage = 0;
          pageNum++;
          pageContent = '';
        }
      }

      if (linesInPage > 0) {
        pagesSql.writeln(
            '''INSERT INTO pages (bookid, page, content, paranum) VALUES ('$bookID', $pageNum, '$pageContent', '-$pageNum-');''');
      }
    }
  }
  pagesSql.writeln("COMMIT;");

  // Write category and book
  var categoryBooksSql = StringBuffer();
  categoryBooksSql.writeln(
      "INSERT INTO category (id, name, basket) SELECT '$categoryID', 'Dhammapāda A', 'annya' WHERE NOT EXISTS (SELECT 1 FROM category WHERE id = '$categoryID');");
  categoryBooksSql.writeln(
      "INSERT INTO books (id, basket, category, name, firstpage, lastpage, pagecount) VALUES ('$bookID', 'annya', '$categoryID', 'Dhammapāda A', 1, ${pageNum - 1}, ${pageNum - 1});");

  // Write the SQL statements to a file
  final outputFile = File("buddhist-legends-output.sql");
  outputFile.writeAsString(deletesSql.toString() +
      tocsSql.toString() +
      pagesSql.toString() +
      categoryBooksSql.toString());
}
