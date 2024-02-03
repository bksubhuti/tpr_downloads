import 'package:test/test.dart';
import 'package:convert_vri/create_sql_import_statements.dart';

void main() {
  test('joinPagesCollections', () {
    expect(
        joinPagesCollections([
          {
            'number': 1,
            'content': ['x', 'x']
          },
          {
            'number': 2,
            'content': ['x']
          },
          {
            'number': 3,
            'content': ['x']
          },
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
          },
        ]);
  });

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
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',1,replace(replace('x\r\nx','\r',char(13)),'\n',chart(10)),'-1-');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',2,replace(replace('x','\r',char(13)),'\n',chart(10)),'');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',3,replace(replace('x','\r',char(13)),'\n',chart(10)),'-1-2-');",
        ]);
  });
}
