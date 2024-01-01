import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

List<Map<String, dynamic>> extractMyanmarEditionPagesFromVriHtml(
    String vriHtml) {
  var document = parser.parse(vriHtml);
  var elements = document.body!.nodes.whereType<Element>();

  var pages = elements.fold<List<Map<String, dynamic>>>([
    {'number': 1, 'content': <String>[]}
  ], (pages, element) {
    var isFirstPage = containsFirstPage(element);
    var isNewPage = containsNewPage(element);
    var isMultipleNewPage = containsMultipleNewPages(element);

    if (isMultipleNewPage) {
      var paragraphStrings = splitParagraphWithMultiplePages(element);
      var paragraphs =
          mapParagraphStringsToParagraphElements(paragraphStrings, element);
      var paragraphsAfterFirst = paragraphs.sublist(1);
      return [
        ...pages,
        createNewPageWithHeaders(pages.last, paragraphs[0]),
        ...paragraphsAfterFirst.map((paragraph) => createNewPage(paragraph))
      ];
    } else if (isNewPage && !isFirstPage) {
      return [...pages, createNewPageWithHeaders(pages.last, element)];
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
  return element
      .querySelectorAll('a')
      .any((a) => a.attributes['name'] == "M0.0001");
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

Map<String, dynamic> createNewPageWithHeaders(
    Map<String, dynamic> lastPage, Element element) {
  var lastPageContent = lastPage['content'] as List<String>;
  var headingsToMove = extractHeadingsToMove(lastPageContent);
  lastPageContent.removeWhere((element) => headingsToMove.contains(element));
  var pageNumber = extractPageNumberFromLine(element);

  return {
    'number': pageNumber,
    'content': [...headingsToMove, element.outerHtml]
  };
}

Map<String, dynamic> createNewPage(Element element) {
  var pageNumber = extractPageNumberFromLine(element);

  return {
    'number': pageNumber,
    'content': [element.outerHtml]
  };
}

List<String> extractHeadingsToMove(List<String> lastPageContent) {
  var headingsToMove = <String>[];
  for (var contentElement in lastPageContent.reversed) {
    if (contentElement.contains('class="chapter"') ||
        contentElement.contains('class="subhead"')) {
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
