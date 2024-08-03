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
    var content = page['content'].join("\\r\\n").replaceAll("'", "’");
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

String createBookSQLImportStatement(
    String id, String categoryId, Map<String, dynamic> bookInfo) {
  String title = bookInfo['title'];
  int firstPage = bookInfo['firstPage'];
  int lastPage = bookInfo['lastPage'];
  int pageCount = bookInfo['pageCount'];

  return "INSERT INTO books VALUES('$id','annya','$categoryId','$title',$firstPage,$lastPage,$pageCount);";
}

String createCategorySQLImportStatement(String id, String name) {
  return "DELETE FROM category WHERE id='$id';\nINSERT INTO category (id, name, basket) VALUES('$id', '$name', 'annya');";
}
