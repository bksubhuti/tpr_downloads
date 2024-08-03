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

    expect(
        createPageSQLImportStatements('annya_sadda_18', [
          {
            'number': 1,
            'content': ["'"],
            'paragraphs': [1]
          },
        ]),
        [
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',1,replace(replace('’','\\r',char(13)),'\\n',char(10)),'-1-');",
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
        createBookSQLImportStatement('annya_sadda_20', 'annya_sadda', {
          'title': 'saddatthabhedacintā',
          'firstPage': 2,
          'lastPage': 3,
          'pageCount': 2,
        }),
        "INSERT INTO books VALUES('annya_sadda_20','annya','annya_sadda','saddatthabhedacintā',2,3,2);");

    expect(
        createBookSQLImportStatement('annya_vi_05', 'annya_vi', {
          'title': 'vinayavinicchayo',
          'firstPage': 1,
          'lastPage': 395,
          'pageCount': 395,
        }),
        "INSERT INTO books VALUES('annya_vi_05','annya','annya_vi','vinayavinicchayo',1,395,395);");
  });

  test('createCategorySQLImportStatement', () {
    expect(createCategorySQLImportStatement('annya_sadda', 'byākaraṇādi'),
        "DELETE FROM category WHERE id='annya_sadda';\nINSERT INTO category (id, name, basket) VALUES('annya_sadda', 'byākaraṇādi', 'annya');");

    expect(createCategorySQLImportStatement('turtles', 'red'),
        "DELETE FROM category WHERE id='turtles';\nINSERT INTO category (id, name, basket) VALUES('turtles', 'red', 'annya');");
  });
}
