import 'package:test/test.dart';
import 'package:convert_vri/create_sql_import_statements.dart';

void main() {
  test('createParagraphsSQLImportStatements', () {
    expect(
        createParagraphsSQLImportStatements('annya_sadda_18', [
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

  test('createPageSQLImportStatements', () {
    expect(
        createPageSQLImportStatements('annya_sadda_18', [
          {
            'number': 1,
            'content': ['x', 'x'],
            'paragraphs': [1]
          },
          {
            'number': 2,
            'content': ['x'],
            'paragraphs': []
          },
          {
            'number': 3,
            'content': ['x'],
            'paragraphs': [1, 2]
          }
        ]),
        [
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',1,replace(replace('x\\r\\nx','\\r',char(13)),'\\n',char(10)),'-1-');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',2,replace(replace('x','\\r',char(13)),'\\n',char(10)),'');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',3,replace(replace('x','\\r',char(13)),'\\n',char(10)),'-1-2-');",
        ]);
  });

  test('createTocSQLImportStatements', () {
    expect(
        createTocSQLImportStatements('mula_ma_81', [
          {
            'number': 1,
            'tocs': [
              {'title': '1. mūlapariyāyavaggo', 'type': 'chapter'},
              {'title': '1. mūlapariyāyasuttaṃ', 'type': 'title'},
            ]
          },
          {
            'number': 9,
            'tocs': [
              {'title': 'dassanā pahātabbāsavā', 'type': 'subhead'},
            ]
          },
          {
            'number': 82,
            'tocs': [
              {'title': 'dukkhasaccaniddeso', 'type': 'subsubhead'},
            ]
          },
        ]),
        [
          "INSERT INTO tocs VALUES('mula_ma_81','1. mūlapariyāyavaggo','chapter',1);",
          "INSERT INTO tocs VALUES('mula_ma_81','1. mūlapariyāyasuttaṃ','title',1);",
          "INSERT INTO tocs VALUES('mula_ma_81','dassanā pahātabbāsavā','subhead',9);",
          "INSERT INTO tocs VALUES('mula_ma_81','dukkhasaccaniddeso','subsubhead',82);",
        ]);
  });

  test('createBookSQLImportStatement', () {
    expect(
        createBookSQLImportStatement({
          'id': 'annya_sadda_17',
          'title': 'saddatthabhedacintā',
          'pageCount': 82,
        }),
        "INSERT INTO books VALUES('annya_sadda_17','annya','annya_sadda','saddatthabhedacintā',1,82,82);");
  });
}
