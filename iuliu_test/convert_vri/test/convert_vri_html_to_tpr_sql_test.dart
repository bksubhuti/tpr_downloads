import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'package:test/test.dart';
import 'dart:io';

String readFile(String filePathRelativeToTestFile) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/test/$filePathRelativeToTestFile';
  return File(fullPath).readAsStringSync();
}

void main() {
  test('extractMyanmarEditionPagesFromVriHtml', () {
    expect(
        extractMyanmarEditionPagesFromVriHtml(
            readFile('e0401n-partial.nrf.html')),
        [
          {'number': 1, 'content': readFile("page1.html")},
          {'number': 2, 'content': readFile("page2.html")},
          {'number': 3, 'content': readFile("page3.html")}
        ]);

    // Given: a text where a new page immediately follows a chapter and subhead heading
    // Should: include the chapter and subhead heading in new page not previous page
    expect(extractMyanmarEditionPagesFromVriHtml(readFile('e0201n-partial.nrf.html')), [
      {'number': 1, 'content': readFile("page1-mulapannasapali.html")},
      {'number': 2, 'content': readFile("page2-mulapannasapali.html")},
    ]);

    var originalList =
        extractMyanmarEditionPagesFromVriHtml(readFile('e0401n.nrf.html'));

    var modifiedList = originalList.map((page) {
      var newPage = Map.from(page);
      newPage.remove('content');
      return newPage;
    }).toList();

    List<Map<String, int>> numberList = [];

    for (int i = 1; i <= 324; i++) {
      numberList.add({'number': i});
    }

    // Given: a full book
    // Expect: every page in the book
    expect(modifiedList, numberList);
  });

  test('extractParagraphsByPage', () {
    expect(extractParagraphsByPage(readFile('paragraphs.txt')), [
      {
        'number': 4,
        'paragraphs': [1]
      },
      {
        'number': 98,
        'paragraphs': [99, 100, 101]
      },
      {
        'number': 324,
        'paragraphs': [1, 2]
      }
    ]);
  });

  test('createParagraphsSQLImportStatements', () {
    expect(
        createParagraphsSQLImportStatements([
          {
            'number': 4,
            'paragraphs': [1]
          },
          {
            'number': 98,
            'paragraphs': [99, 100, 101]
          }
        ]),
        [
          "INSERT INTO paragraphs VALUES('annya_sadda_18',1,4);",
          "INSERT INTO paragraphs VALUES('annya_sadda_18',99,98);",
          "INSERT INTO paragraphs VALUES('annya_sadda_18',100,98);",
          "INSERT INTO paragraphs VALUES('annya_sadda_18',101,98);",
        ]);
  });

  test('joinPagesCollections', () {
    expect(
        joinPagesCollections([
          {'number': 1, 'content': 'x'},
          {'number': 2, 'content': 'x'},
          {'number': 3, 'content': 'x'},
        ], [
          {
            'number': 1,
            'paragraphs': [1]
          },
          {
            'number': 3,
            'paragraphs': [1, 2]
          },
        ]),
        [
          {
            'number': 1,
            'content': 'x',
            'paragraphs': [1]
          },
          {'number': 2, 'content': 'x', 'paragraphs': []},
          {
            'number': 3,
            'content': 'x',
            'paragraphs': [1, 2]
          },
        ]);
  });

  test('createPageSQLImportStatements', () {
    expect(
        createPageSQLImportStatements([
          {
            'number': 1,
            'content': 'x\nx',
            'paragraphs': [1]
          },
          {'number': 2, 'content': 'x', 'paragraphs': []},
          {
            'number': 3,
            'content': 'x',
            'paragraphs': [1, 2]
          }
        ]),
        [
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',1,'xx','-1-');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',2,'x','');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',3,'x','-1-2-');",
        ]);
  });
}
