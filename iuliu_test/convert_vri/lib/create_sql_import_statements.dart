List<Map<String, dynamic>> joinPagesCollections(
    List<Map<String, dynamic>> pages, List<Map<String, dynamic>> paragraphs) {
  var paragraphsMap = {for (var p in paragraphs) p['number']: p['paragraphs']};

  return pages.map((page) {
    var pageNumber = page['number'];
    var mergedPage = Map<String, dynamic>.from(page);

    mergedPage['paragraphs'] = paragraphsMap[pageNumber] ?? [];
    return mergedPage;
  }).toList();
}

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
    var content = page['content'].join('').replaceAll('\n', '');
    var paragraphs = page['paragraphs'];

    var paragraphsStr =
        paragraphs.isNotEmpty ? '-${paragraphs.join('-')}-' : '';

    return "INSERT INTO pages (bookid, page, content, paranum) VALUES('$bookId',$number,'$content','$paragraphsStr');";
  }).toList();
}
