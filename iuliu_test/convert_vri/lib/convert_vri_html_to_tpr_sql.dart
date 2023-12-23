import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<String> cut_vri_html_into_myanmar_edition_pages(String vriHTML) {
  var document = parser.parse(vriHTML);

  List<List<String>> pages = [];
  List<String> pageParagraphs = [];
  for (var node in document.body!.nodes) {
    if (node is! Element) continue;
    var isFirstPage = node.querySelectorAll('a').any((a) => a.attributes['name'] == "M0.0001");
    var isNewPage = node.querySelectorAll('a').any((a) => a.attributes['name']?.startsWith('M') ?? false);

    if (!isNewPage || isFirstPage) pageParagraphs.add(node.outerHtml);
    if (isNewPage && !isFirstPage) {
      pages.add(List.from(pageParagraphs));
      pageParagraphs = [node.outerHtml];
    }
  }
  if (pageParagraphs.isNotEmpty) pages.add(pageParagraphs);

  return pages.map((page) => page.join('\n')).toList();
}