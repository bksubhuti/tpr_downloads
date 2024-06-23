List<String> createParagraphsSQLImportStatements(
    String bookId, List<dynamic> pages) {
  List<String> statements = [];

  for (var page in pages) {
    int pageNumber = page['number'];
    List<int> paragraphs = List<int>.from(page['paragraphs']);

    for (var paragraph in paragraphs) {
      String statement =
          "INSERT INTO paragraphs VALUES('$bookId',$paragraph,$pageNumber);";
      statements.add(statement);
    }
  }

  return statements;
}

List<String> createPageSQLImportStatements(
    String bookId, List<Map<String, dynamic>> pages) {
  return pages.map((page) {
    var number = page['number'];
    var content = page['content'].join("\\r\\n");
    var paragraphs = page['paragraphs'];

    var paragraphsStr =
        paragraphs.isNotEmpty ? '-${paragraphs.join('-')}-' : '';

    return "INSERT INTO pages (bookid, page, content, paranum) VALUES('$bookId',$number,replace(replace('$content','\\r',char(13)),'\\n',char(10)),'$paragraphsStr');";
  }).toList();
}

List<String> createTocSQLImportStatements(
    String bookId, List<Map<String, dynamic>> pages) {
  List<String> statements = [];

  for (var page in pages) {
    int pageNumber = page['number'];
    var tocs = List<Map<String, dynamic>>.from(page['tocs']);

    for (var toc in tocs) {
      String title = toc['title'];
      String type = toc['type'];
      String statement =
          "INSERT INTO tocs VALUES('$bookId','$title','$type',$pageNumber);";
      statements.add(statement);
    }
  }

  return statements;
}

String createBookSQLImportStatement(Map<String, dynamic> book) {
  String id = book['id'];
  String title = book['title'];
  int pageCount = book['pageCount'];

  return "INSERT INTO books VALUES('$id','annya','annya_sadda','$title',1,$pageCount,$pageCount);";
}
