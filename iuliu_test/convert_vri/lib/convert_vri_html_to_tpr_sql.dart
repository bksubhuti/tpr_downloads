import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<Map<String, dynamic>> cut_vri_html_into_myanmar_edition_pages(String vriHtml) {
  var document = parser.parse(vriHtml);
  var elements = document.body!.nodes.whereType<Element>();

  var pages = elements.fold<List<Map<String, dynamic>>>([{ 'number': 1, 'content': <String>[] }], (pages, element) {
    var isFirstPage = containsFirstPage(element);
    var isNewPage = containsNewPage(element);

    if (isNewPage && !isFirstPage) {
      var pageNumber = extractPageNumberFromLine(element);
      return [...pages, { 'number': pageNumber, 'content': [element.outerHtml] }];
    } else {
      pages.last['content'].add(element.outerHtml);
      return pages;
    }
  });

  return pages.map((page) {
    return {
      'number': page['number'],
      'content': (page['content'] as List<String>).join('\n')
    };
  }).toList();
}

bool containsFirstPage(Element element) {
  return element.querySelectorAll('a').any((a) => a.attributes['name'] == "M0.0001");
}

bool containsNewPage(Element element) {
  return element.querySelectorAll('a').any((a) => a.attributes['name']?.startsWith('M') ?? false);
}

int extractPageNumberFromLine(Element element) {
  var myanmarPageAnchorTag = element.querySelectorAll('a[name^="M"]');
  var nameAttr = myanmarPageAnchorTag.first.attributes['name'];
  var numberPart = nameAttr?.substring(3) ?? '0';
  var pageNumber = int.tryParse(numberPart) ?? 0;
  return pageNumber;
}

int extractPageNumber(Element element) {
  var nameAttr = element.attributes['name'];
  var numberPart = nameAttr?.substring(3) ?? '0';
  var pageNumber = int.tryParse(numberPart) ?? 0;
  return pageNumber;
}

List<Map<String, dynamic>> extract_paragraphs_by_page(String pagesAndParagraphs) {
  var document = parser.parse(pagesAndParagraphs);
  var elements = document.body!.nodes.whereType<Element>();

  var paragraphsByPage = elements.fold<List<Map<String, dynamic>>>([], (pages, element) {
    var isAnchor = element.localName == 'a';

    if (isAnchor) {
      var pageNumber = extractPageNumber(element);
      return [...pages, { 'number': pageNumber, 'paragraphs': <int>[] }];
    }

    var paragraphNumbers = extractParagraphNumbers(element);
    for (var number in paragraphNumbers) {
      pages.last['paragraphs'].add(number);
    }
    return pages;
  });

  return paragraphsByPage.where((page) => page['paragraphs'].isNotEmpty).toList();
}

List<int> extractParagraphNumbers(Element element) {
  var numbers = element.text.split('-');
  return numbers.map(int.parse).toList();
}