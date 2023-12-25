import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'package:test/test.dart';
import 'dart:io';

String readFile(String filePathRelativeToTestFile) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/test/$filePathRelativeToTestFile';
  return File(fullPath).readAsStringSync();
}

void main() {
  test('cut_vri_html_into_myanmar_edition_pages', () {
    expect(cut_vri_html_into_myanmar_edition_pages(readFile('e0401n.nrf.html')), [
      { 'number': 1, 'content': readFile("page1.html") },
      { 'number': 2, 'content': readFile("page2.html") },
      { 'number': 3, 'content': readFile("page3.html") }
    ]);
  });

  test('extract_paragraphs_by_page', () {
    expect(extract_paragraphs_by_page(readFile('paragraphs.txt')), [ { 'number': 4, 'paragraphs': [1] }, { 'number': 98, 'paragraphs': [99, 100, 101]}, { 'number': 324, 'paragraphs': [1, 2]}]);
  });

  test('create_sql_statements_from_paragraphs_by_page', () {
    expect(create_sql_statements_from_paragraphs_by_page([ { 'number': 4, 'paragraphs': [1] }, { 'number': 98, 'paragraphs': [99, 100, 101]}]), [
      "INSERT INTO paragraphs VALUES('annya_sadda_18',1,4);",
      "INSERT INTO paragraphs VALUES('annya_sadda_18',99,98);",
      "INSERT INTO paragraphs VALUES('annya_sadda_18',100,98);",
      "INSERT INTO paragraphs VALUES('annya_sadda_18',101,98);",
    ]);
  });

  test('join_pages_collections', () {
    expect(join_pages_collections([
      { 'number': 1, 'content': 'x' },
      { 'number': 2, 'content': 'x' },
      { 'number': 3, 'content': 'x' },
    ], [
      { 'number': 1, 'paragraphs': [1] },
      { 'number': 3, 'paragraphs': [1, 2] },
    ]), [
      { 'number': 1, 'content': 'x', 'paragraphs': [1] },
      { 'number': 2, 'content': 'x', 'paragraphs': [] },
      { 'number': 3, 'content': 'x', 'paragraphs': [1, 2] },
    ]);
  });

  test('create_page_sql_import_statements', () {
    expect(create_page_sql_import_statements([
      { 'number': 1, 'content': 'x\nx', 'paragraphs': [1] },
      { 'number': 2, 'content': 'x', 'paragraphs': [] },
      { 'number': 3, 'content': 'x', 'paragraphs': [1, 2] }
    ]), [
      "INSERT INTO pages VALUES('annya_sadda_18',1,'xx','-1-');",
      "INSERT INTO pages VALUES('annya_sadda_18',2,'x','');",
      "INSERT INTO pages VALUES('annya_sadda_18',3,'x','-1-2-');",
    ]);
  });
}
