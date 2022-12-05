import 'dart:core';
import 'dart:io';
import 'dart:convert';
import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'bookList.dart';

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
      // Read the file
      String s = await file.readAsString();
      BeautifulSoup bs = BeautifulSoup(s);

      // need to cycle through the elements of body increment page
      Bs4Element body = bs.body!;
      List<Bs4Element> suttaElements =
          body.findAll('h3,h2,p', attrs: {'class': true});

      Bs4Element? myH3 = body.find('h3', attrs: {'class': true});

      // fix for title in

      String bsTitle = myH3!.text.toString();
      bsTitle = bsTitle.replaceAll("pli-tv-bu-vb-", "");
      bsTitle = bsTitle.replaceAll("root-pli-ms.j.", "");

      pagesSql.writeln(
          '''INSERT INTO tocs (book_id, name, type, page_number) VALUES ('$bookID', '$bsTitle', 'title', $pageNum);''');

      String page = "";
      int linesInPage = 1;

      for (Bs4Element lineElement in suttaElements) {
        // now lets build a string  every 26 elements will be a new page
        linesInPage++;
        String lineToAdd = lineElement.toString();

        String suttaLine =
            lineElement.text.replaceAll('\'', '').replaceAll('\n', '');
        if (!lineToAdd.toLowerCase().contains("span")) {
          lineToAdd = //erase all from this class &nbs
              '<p class="p3"><span class="t1"></span></p>';
        }

        if (lineToAdd.toString().toLowerCase().contains("th31")) {
          lineToAdd = '<h3 class="h31"><span class="th31">$bsTitle</span></h3>';
          //;
          print(bsTitle);
        }
        if (lineToAdd.toLowerCase().contains("t1")) {
          lineToAdd = '<p class="p3"><span class="t1">$suttaLine</span></p>';
        }
        if (lineToAdd.toLowerCase().contains("t2")) {
          lineToAdd = '<p class="p3"><span class="t2">$suttaLine</span></p>';
        }
        if (lineToAdd.toLowerCase().contains("t3")) {
          lineToAdd = '<p class="p3"><span class="t3">$suttaLine</span></p>';
        }
        if (lineToAdd.toLowerCase().contains("t5")) {
          lineToAdd = '<p class="p3"><span class="t5">$suttaLine</span></p>';
        }

        page += lineToAdd;

        if (linesInPage > 35) {
          pagesSql.writeln(
              '''INSERT INTO pages (bookid, page, content, paranum) VALUES  ('$bookID', $pageNum, '$page', '-$pageNum-');''');
          linesInPage = 0;
          pageNum++;
          page = '';
        }
      } // cycle suttaElements

      // there are remainder items.. like half page remaining.
      if (page.isNotEmpty) {
        pagesSql.writeln(
            '''INSERT INTO pages (bookid, page, content, paranum) VALUES  ('$bookID', $pageNum, '$page', '-$pageNum-');''');
        linesInPage = 0;
        pageNum++;
        page = '';
      }
    } // for loop

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
  final file = File("pali-english-books.sql");

  String categoryAndBooks =
      "Begin Transaction;\n$categorySql$booksSql\nCOMMIT;";

  // Write the file
  file.writeAsString(
      deletesSql.toString() + categoryAndBooks + pagesSql.toString());
}

//
///  table category
/// (id, name, basket)
/// annya_pe_mn, pe Majjhima Nikaya, annya
/// 3 books here
//
//table books
//  (id, basket, category, name, firstpage, lastpage, pagecount, toc)
//   annya_pe_mn_mn1, annya, annya_pe_mn, 1, 50, 50,
//  table tocs
//  book_id name type page_number
//  annya_pe_mn1, <TITLE> <TITLE NUM>
//
//  table  pages (bookid, page, content, paranum)
//   annya_pe_mn_mn1, <count> <body> <count>
/*
  var myString = StringBuffer();
  // make 200k records
  for (int x = 0; x < 200000; x++) {
    myString.write("$x, another variable$x, 8\n");
    if (x % 1000 == 1) {
      print("$x");
    }
    String s = myString.toString();

  }
  print(myString.length);
*/
