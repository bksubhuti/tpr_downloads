import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<String> cut_vri_html_into_myanmar_edition_pages(String vriHtml) {
  var document = parser.parse(vriHtml);
  var elements = document.body!.nodes.whereType<Element>();

  var pages = elements.fold<List<List<String>>>([[]], (pages, element) {
    var isFirstPage = element.querySelectorAll('a').any((a) => a.attributes['name'] == "M0.0001");
    var isNewPage = element.querySelectorAll('a').any((a) => a.attributes['name']?.startsWith('M') ?? false);

    if (isNewPage && !isFirstPage) {
      return [...pages, [element.outerHtml]];
    } else {
      var lastPage = pages.last;
      lastPage.add(element.outerHtml);
      return pages;
    }
  });

  return pages.map((page) => page.join('\n')).toList();
}