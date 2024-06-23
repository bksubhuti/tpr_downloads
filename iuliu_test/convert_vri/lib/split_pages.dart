import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<Map<String, dynamic>> extractMyanmarEditionPagesFromVriHtml(
    String vriHtml) {
  var document = parser.parse(vriHtml);
  var elements = document.body!.nodes.whereType<Element>();

  return elements.fold([
    {'number': 1, 'content': <String>[]}
  ], (pages, element) {
    if (isNewPage(element)) return addNewPages(pages, element);
    return addNewParagraphToLastPage(pages, element.outerHtml);
  });
}

bool isNewPage(Element element) {
  return element
      .querySelectorAll('a')
      .any((a) => a.attributes['name']?.startsWith('M') ?? false);
}

List<Map<String, dynamic>> addNewPages(
    List<Map<String, dynamic>> pages, Element element) {
  var [lastPageParagraph, ...newPageParagraphs] =
      splitParagraphOnWordPrecedingMarker(element.outerHtml);

  return [
    ...(isParagraphNewPage(lastPageParagraph) &&
            !isParagraphFirstPage(lastPageParagraph)
        ? addNewPageWithHeaders(pages, element)
        : addNewParagraphToLastPage(pages, lastPageParagraph)),
    ...newPageParagraphs
        .map((newPageParagraph) => createNewPage(newPageParagraph))
        .toList()
  ];
}

List<Map<String, dynamic>> addNewParagraphToLastPage(
    List<Map<String, dynamic>> pages, String paragraph) {
  var updatedLastPage = Map<String, dynamic>.from(pages.last)
    ..update(
      'content',
      (content) => List<String>.from(content)..add(paragraph),
    );

  return [
    ...pages.sublist(0, pages.length - 1),
    updatedLastPage,
  ];
}

bool isParagraphFirstPage(String paragraphHtml) {
  Document doc = parser.parse(paragraphHtml);
  Element paragraph = doc.querySelector('p')!;
  return paragraph
      .querySelectorAll('a')
      .any((a) => RegExp(r'M\d+\.0001').hasMatch(a.attributes['name'] ?? ""));
}

bool isParagraphNewPage(String paragraphHtml) {
  Document doc = parser.parse(paragraphHtml);
  Element paragraph = doc.querySelector('p')!;
  return isNewPage(paragraph);
}

List<String> splitParagraphOnWordPrecedingMarker(String paragraphHtml,
    [bool didSplit = false]) {
  var doc = parser.parse(paragraphHtml);
  var paragraph = doc.querySelector('p')!;

  var matches =
      RegExp(r'<a name="M[^"]*"></a>').allMatches(paragraph.innerHtml);
  var newPageMarkerMatch =
      didSplit ? matches.elementAtOrNull(1) : matches.elementAtOrNull(0);
  if (newPageMarkerMatch == null) return [paragraph.outerHtml];

  var precedingHtml =
      paragraph.innerHtml.substring(0, newPageMarkerMatch.start);
  var wordIndex = matchFirstPrecedingWord(precedingHtml)?.start;
  if (wordIndex == null) return [paragraph.outerHtml];

  var pTagStart = '<p class="${paragraph.className}">';
  var pTagEnd = '</p>';
  var part1 = paragraph.innerHtml.substring(0, wordIndex);
  var part2 = paragraph.innerHtml.substring(wordIndex);

  return part1.isNotEmpty
      ? [
          '$pTagStart$part1$pTagEnd',
          ...splitParagraphOnWordPrecedingMarker(
              '$pTagStart$part2$pTagEnd', true)
        ]
      : splitParagraphOnWordPrecedingMarker('$pTagStart$part2$pTagEnd', true);
}

List<Map<String, dynamic>> addNewPageWithHeaders(
    List<Map<String, dynamic>> pages, Element element) {
  var clonedPages = List<Map<String, dynamic>>.from(pages);

  var lastPage = clonedPages.isNotEmpty ? clonedPages.last : {'content': []};

  var lastPageContent = lastPage['content'] as List<String>;
  var headingsToMove = extractHeadingsToMove(lastPageContent);
  lastPageContent.removeWhere((element) => headingsToMove.contains(element));

  var pageNumber = extractPageNumberFromLine(element);

  var newPage = {
    'number': pageNumber,
    'content': [...headingsToMove, element.outerHtml]
  };

  clonedPages.add(newPage);

  return clonedPages;
}

Map<String, dynamic> createNewPage(String paragraphHtml) {
  Document doc = parser.parse(paragraphHtml);
  Element paragraph = doc.querySelector('p')!;
  var pageNumber = extractPageNumberFromLine(paragraph);

  return {
    'number': pageNumber,
    'content': [paragraph.outerHtml]
  };
}

List<String> extractHeadingsToMove(List<String> lastPageContent) {
  var headingsToMove = <String>[];
  for (var contentElement in lastPageContent.reversed) {
    if (contentElement.contains('class="chapter"') ||
        contentElement.contains('class="subhead"') ||
        contentElement.contains('class="subsubhead"') ||
        contentElement.contains('class="title"')) {
      headingsToMove.insert(0, contentElement);
    } else {
      break;
    }
  }
  return headingsToMove;
}

int extractPageNumberFromLine(Element element) {
  var myanmarPageAnchorTag = element.querySelectorAll('a[name^="M"]');
  var nameAttr = myanmarPageAnchorTag.first.attributes['name'];
  var numberPart = nameAttr?.substring(3) ?? '0';
  var pageNumber = int.tryParse(numberPart) ?? 0;
  return pageNumber;
}

RegExpMatch? matchFirstPrecedingWord(String string) {
  var maybeSpace = '\\s*';
  var maybeAnchor = '$maybeSpace(<a name=".+?"></a>){0,}$maybeSpace\$';
  var maybeParagraphNumber =
      '(<a name="para\\d+"></a><span class="paranum">\\d+</span>. )?';
  var contiguousString = '[^\\s]+';

  var matchWithSpan = RegExp(
          '($maybeParagraphNumber<span class="bld">$contiguousString)$maybeAnchor')
      .firstMatch(string);

  var match = RegExp('($maybeParagraphNumber$contiguousString)$maybeAnchor')
      .firstMatch(string);

  return matchWithSpan ?? match;
}

List<Map<String, dynamic>> addParagraphsToPages(
    List<Map<String, dynamic>> pages) {
  return pages.map((page) {
    return {
      'number': page['number'],
      'content': page['content'],
      'paragraphs': List<String>.from(page['content']).fold([],
          (previousParagraphNumbers, textLine) {
        var document = parser.parse(textLine);
        var paragraphNumbers = document.body!.querySelectorAll('span.paranum');
        return [
          ...previousParagraphNumbers,
          ...paragraphNumbers
              .expand((e) => (e.text.split('-').map((e) => int.parse(e))))
              .toList()
        ];
      }).toList()
    };
  }).toList();
}

List<Map<String, dynamic>> addTocsToPagesWithParagraphs(
    List<Map<String, dynamic>> pages) {
  const allowedClasses = {'chapter', 'title', 'subhead', 'subsubhead'};

  return pages.map((page) {
    List<Map<String, String>> tocs = [];
    for (String textLine in page['content']) {
      RegExp regExp = RegExp(r'<p class="([^"]+)">(.+?)<\/p>');
      Match? match = regExp.firstMatch(textLine);
      if (match != null) {
        String type = match.group(1)!;
        if (allowedClasses.contains(type)) {
          String title = match.group(2)!.toLowerCase();
          tocs.add({'title': title, 'type': type});
        }
      }
    }

    return {
      'number': page['number'],
      'content': page['content'],
      'paragraphs': page['paragraphs'],
      'tocs': tocs,
    };
  }).toList();
}
