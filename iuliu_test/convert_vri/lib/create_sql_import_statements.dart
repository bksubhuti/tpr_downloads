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
