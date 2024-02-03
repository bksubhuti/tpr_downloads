import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<Map<String, dynamic>> extractParagraphsByPage(String pagesAndParagraphs) {
  var document = parser.parse(pagesAndParagraphs);
  var elements = document.body!.nodes.whereType<Element>();

  var paragraphsByPage =
      elements.fold<List<Map<String, dynamic>>>([], (pages, element) {
    var isAnchor = element.localName == 'a';

    if (isAnchor) {
      var pageNumber = extractPageNumber(element);
      return [
        ...pages,
        {'number': pageNumber, 'paragraphs': <int>[]}
      ];
    }

    if (pages.isEmpty) {
      pages.add({'number': 1, 'paragraphs': <int>[]});
    }

    var paragraphNumbers = extractParagraphNumbers(element);
    for (var number in paragraphNumbers) {
      pages.last['paragraphs'].add(number);
    }
    return pages;
  });

  return paragraphsByPage
      .where((page) => page['paragraphs'].isNotEmpty)
      .toList();
}

int extractPageNumber(Element element) {
  var nameAttr = element.attributes['name'];
  var numberPart = nameAttr?.substring(3) ?? '0';
  var pageNumber = int.tryParse(numberPart) ?? 0;
  return pageNumber;
}

List<int> extractParagraphNumbers(Element element) {
  var numbers = element.text.split('-');
  return numbers.map(int.parse).toList();
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