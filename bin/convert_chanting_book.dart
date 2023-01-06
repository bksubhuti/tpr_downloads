import 'dart:core';
import 'dart:io';
import 'dart:convert';
import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'chanting_bookList.dart';

void main(List<String> arguments) async {
  final List<dynamic> bookList = json.decode(booklistString);

  String title = '';
  String basketName = '';
  String categoryID = '';
  String categoryName = '';
  String bookName = '';
  String bookID = '';
  var pagesSql = StringBuffer();
  var categorySql = StringBuffer();
  var booksSql = StringBuffer();
  var deletesSql = StringBuffer();

  for (int i = 0; i < bookList.length; i++) {
    var dir = Directory(bookList[i]["dir"]);
    List<FileSystemEntity> entities = await dir.list().toList();
    //entities.forEach(print);
    List<String> filenames = [];
    title = bookList[i]["title"];
    basketName = bookList[i]["basketName"];
    String categoryID = bookList[i]["categoryID"];
    categoryName = bookList[i]["categoryName"];
    bookName = bookList[i]["bookName"];
    bookID = bookList[i]["bookID"];
    int pageNum = 1;

    for (FileSystemEntity x in entities) {
      filenames.add(x.path);
    }
    filenames.sort();
    // delete the info
    deletesSql.writeln("Begin Transaction;");
    deletesSql.writeln("DELETE from tocs where book_id = '$bookID';");
    deletesSql.writeln("DELETE from books where id = '$bookID';");
    deletesSql.writeln("DELETE from pages where bookid = '$bookID';");
    deletesSql.writeln("DELETE from fts_pages where bookid = '$bookID';");
    deletesSql.writeln("DELETE from category where id = '$categoryID';");
    deletesSql.writeln("COMMIT;");

    // do another trans
    pagesSql.writeln("Begin Transaction;");

    for (var element in filenames) {
      // each file is one suttaElements one toc one page one paragraph
      final file = File(element);
      // Read the file line by line using the readAsLines() method
      List<String> lines = file.readAsLinesSync();
      final StringBuffer sb = StringBuffer("");
      int linesPerPage = 0;
      // Iterate through the lines and add each line to the StringBuffer
      // with the <p> tag added to the beginning and end of the line
      for (String line in lines) {
        sb.write('<p>${line.replaceAll('\'', '\'\'')}</p>');
        linesPerPage++;
        // ad toc
        if (line.contains('<h1>'))
          pagesSql.writeln(
              '''INSERT INTO tocs (book_id, name, type, page_number) VALUES ('$bookID', '${removeH1Tags(line)}', 'title', $pageNum);''');

        if (linesPerPage > 35) {
          pagesSql.writeln(
              '''INSERT INTO pages (bookid, page, content, paranum) VALUES  ('$bookID', $pageNum, '${sb.toString()}', '-$pageNum-');''');
          linesPerPage = 0;
          pageNum++;
          sb.clear();
        }
      }

//      pagesSql.writeln(
      //        '''INSERT INTO tocs (book_id, name, type, page_number) VALUES ('$bookID', '$bsTitle', 'title', $pageNum);''');

      // there are remainder items.. like half page remaining.
      if (sb.isNotEmpty) {
        pagesSql.writeln(
            '''INSERT INTO pages (bookid, page, content, paranum) VALUES  ('$bookID', $pageNum, '${sb.toString()}', '-$pageNum-');''');
        linesPerPage = 0;
        pageNum++;
        sb.clear();
      }
    } // for loop go through pages and lines in book

    // now we have all the information for 1 set
    // make the tables and inserts.

    categorySql.writeln(
        '''INSERT INTO category (id, name, basket) Select '$categoryID', '$categoryName', '$basketName' WHERE NOT EXISTS(SELECT 1 FROM category WHERE id = '$categoryID');''');

    booksSql.writeln(
        '''INSERT INTO books (id, basket, category, name, firstpage, lastpage, pagecount) VALUES ('$bookID', '$basketName', '$categoryID', '$bookName', 1, $pageNum, $pageNum); ''');

    pagesSql.writeln("COMMIT;");

    // finish 1 book.. now set page to 0
    pageNum = 0;
  } // for loop going through json array

  // write the file now.
  final file = File("iit_chantingbook.sql");

  String categoryAndBooks =
      "Begin Transaction;\n$categorySql$booksSql\nCOMMIT;";

  // Write the file
  file.writeAsString(
      deletesSql.toString() + categoryAndBooks + pagesSql.toString());
}

String removeH1Tags(String html) {
  return html.replaceAllMapped(
      RegExp(r"<h1>(.*?)</h1>"), (match) => match.group(1).toString());
}
