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
}
