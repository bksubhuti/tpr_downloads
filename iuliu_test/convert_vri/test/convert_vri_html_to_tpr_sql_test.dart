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
    List<String> expectedOutput = [
      readFile("page1.html"),
      readFile("page2.html"),
      readFile("page3.html")
    ];

    expect(cut_vri_html_into_myanmar_edition_pages('./e0401n.nrf.html'), expectedOutput);
  });
}
