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
