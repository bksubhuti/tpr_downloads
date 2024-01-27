import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<Map<String, dynamic>> extractMyanmarEditionPagesFromVriHtml(
    String vriHtml) {
  var document = parser.parse(vriHtml);
  var elements = document.body!.nodes.whereType<Element>();

  var pages = elements.fold<List<Map<String, dynamic>>>([
    {'number': 1, 'content': <String>[]}
  ], (pages, element) {
    var isNewPage = containsNewPage(element);
    var isFirstPage = containsFirstPage(element);

    if (!isNewPage || isFirstPage) {
      return addNewParagraphToLastPage(pages, element.outerHtml);
    }

    return addNewPage(pages, element);
  });

  return pages.map((page) {
    return {
      'number': page['number'],
      'content': (page['content'] as List<String>).join('\n')
    };
  }).toList();
}

List<Map<String, dynamic>> addNewParagraphToLastPage(
    List<Map<String, dynamic>> pages, String paragraph) {
  final Map<String, dynamic> updatedLastPage =
      Map<String, dynamic>.from(pages.last)
        ..update(
          'content',
          (content) => List<String>.from(content)..add(paragraph),
        );

  return [
    ...pages.sublist(0, pages.length - 1),
    updatedLastPage,
  ];
}

List<Map<String, dynamic>> addNewPage(
    List<Map<String, dynamic>> pages, Element element) {
  var isNewPageMarkerAtStart =
      calculateIsNewPageMarkerAtStartOfParagraph(element);
  var isMultipleNewPage = containsMultipleNewPages(element);

  if (isNewPageMarkerAtStart && !isMultipleNewPage) {
    return addNewPageWithHeaders(pages, element);
  } else {
    var [lastPageParagraph, ...newPageParagraphs] =
        splitParagraphOnWordPrecedingMarker(element.outerHtml);

    Document doc = parser.parse(lastPageParagraph);
    Element paragraph = doc.querySelector('p')!;
    if (paragraph.querySelectorAll('a[name^="M"]').firstOrNull == null) {
      return [
        ...addNewParagraphToLastPage(pages, lastPageParagraph),
        ...newPageParagraphs
            .map((newPageParagraph) => createNewPageFromText(newPageParagraph))
            .toList()
      ];
    } else {
      return [
        ...addNewPageWithHeaders(pages, element),
        ...newPageParagraphs
            .map((newPageParagraph) => createNewPageFromText(newPageParagraph))
            .toList()
      ];
    }
  }
}

bool containsFirstPage(Element element) {
  RegExp namePattern = RegExp(r'M\d+\.0001');

  return element
      .querySelectorAll('a')
      .any((a) => namePattern.hasMatch(a.attributes['name'] ?? ""));
}

bool containsNewPage(Element element) {
  return element
      .querySelectorAll('a')
      .any((a) => a.attributes['name']?.startsWith('M') ?? false);
}

bool containsMultipleNewPages(Element element) {
  var newPageMarkers = element.querySelectorAll('a').where(
        (a) => a.attributes['name']?.startsWith('M') ?? false,
      );

  return newPageMarkers.length > 1;
}

bool calculateIsNewPageMarkerAtStartOfParagraph(Element element) {
  var match = RegExp(r'<a name="M[^"]*"></a>').firstMatch(element.innerHtml);
  if (match == null) return false;

  var textUpToMarker =
      parser.parseFragment(element.innerHtml.substring(0, match.end)).text;
  if (textUpToMarker == null) return false;

  var words = textUpToMarker!
      .trim()
      .split(RegExp(r'\s+'))
      .where((word) => !RegExp(r'^\d+\.$').hasMatch(word))
      .toList();
  return words.length == 1;
}

List<String> splitParagraphOnWordPrecedingMarker(String paragraphHtml) {
  Document doc = parser.parse(paragraphHtml);
  Element paragraph = doc.querySelector('p')!;

  var matches =
      RegExp(r'[^\s]+\s*<a name="M[^"]*"></a>').allMatches(paragraph.innerHtml);

  if (matches.isEmpty || (matches.first.start == 0 && matches.length == 1)) {
    return [paragraph.outerHtml];
  }

  RegExpMatch match;
  if (matches.first.start != 0) {
    match = matches.first;
  } else {
    match = matches.elementAt(1);
  }

  int precedingWordStartIndex = match.start;
  String part1 = paragraph.innerHtml.substring(0, precedingWordStartIndex);
  String part2 = paragraph.innerHtml.substring(precedingWordStartIndex);

  String pTagStart = '<p class="${paragraph.className}">';
  String pTagEnd = '</p>';

  return [
    '$pTagStart$part1$pTagEnd',
    ...splitParagraphOnWordPrecedingMarker('$pTagStart$part2$pTagEnd')
  ];
}

List<String> splitParagraphWithMultiplePages(Element paragraph) {
  var pageMarkers = paragraph.querySelectorAll('a[name^="M"]');
  var pageMarkersWithoutFirst = pageMarkers.sublist(1);
  var wordRegex = RegExp(r'[^\s]+(?=\s*$)');

  int previousPageEnd = 0;
  List<String> pages = pageMarkersWithoutFirst.fold<List<String>>([],
      (List<String> pages, Element marker) {
    int markerIndex = paragraph.innerHtml.indexOf(marker.outerHtml);
    String upToMarker =
        paragraph.innerHtml.substring(previousPageEnd, markerIndex);

    RegExpMatch? match = wordRegex.firstMatch(upToMarker);
    if (match != null) {
      int lastWordIndex = previousPageEnd + match.start;
      var previousPage =
          paragraph.innerHtml.substring(previousPageEnd, lastWordIndex);
      previousPageEnd = lastWordIndex;
      return [...pages, previousPage];
    }
    return pages;
  });

  if (previousPageEnd < paragraph.innerHtml.length) {
    pages.add(paragraph.innerHtml.substring(previousPageEnd));
  }

  return pages;
}

List<Element> mapParagraphStringsToParagraphElements(
    List<String> paragraphStrings, Element originalElement) {
  String? originalTag = originalElement.localName;
  Map<String, String> originalAttributes =
      Map<String, String>.from(originalElement.attributes);

  return paragraphStrings.map((paragraphString) {
    Element newElement = Element.tag(originalTag);
    newElement.attributes.addAll(originalAttributes);
    newElement.innerHtml = paragraphString;
    return newElement;
  }).toList();
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

Map<String, dynamic> createNewPage(Element element) {
  var pageNumber = extractPageNumberFromLine(element);

  return {
    'number': pageNumber,
    'content': [element.outerHtml]
  };
}

Map<String, dynamic> createNewPageFromText(String paragraphHtml) {
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

    if (pages.length == 0) {
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
    var content = page['content'].replaceAll('\n', '');
    var paragraphs = page['paragraphs'];

    var paragraphsStr =
        paragraphs.isNotEmpty ? '-${paragraphs.join('-')}-' : '';

    return "INSERT INTO pages (bookid, page, content, paranum) VALUES('$bookId',$number,'$content','$paragraphsStr');";
  }).toList();
}
