import 'package:test/test.dart';
import 'package:convert_vri/create_sql_import_statements.dart';
import 'package:convert_vri/split_pages.dart';
import 'package:convert_vri/extract_paragraphs.dart';
import 'dart:io';

String readFile(String filePathRelativeToTestFile) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/test/$filePathRelativeToTestFile';
  return File(fullPath).readAsStringSync();
}

void writeFile(String relativeFilePath, String content) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/test/$relativeFilePath';
  File(fullPath).writeAsString(content);
}

List<String> modifiedCreatePageSQLImportStatements(
    String bookId, List<Map<String, dynamic>> pages) {
  return pages.map((page) {
    var number = page['number'];
    var content = page['content'].join("\\r\\n");
    var paragraphs = page['paragraphs'];

    var paragraphsStr =
        paragraphs.isNotEmpty ? '-${paragraphs.join('-')}-' : '';

    var idNumber = number + 3039;
    return "INSERT INTO pages VALUES($idNumber,'$bookId',$number,replace(replace('$content\\r\\n','\\r',char(13)),'\\n',chart(10)),'$paragraphsStr');";
  }).toList();
}

List<Map<String, dynamic>> processPagesText(List<Map<String, dynamic>> pages) {
  return pages.map((page) {
    return {
      'number': page['number'],
      'content': page['content'].map((textLine) {
        return textLine.toLowerCase();
      }),
      'paragraphs': page['paragraphs']
    };
  }).toList();
}

void main() {
  test('mulapannasapli import diff', () {
    var pagesWithContentMN1 = extractMyanmarEditionPagesFromVriHtml(
        readFile('../../mulapannasapali/s0201m.mul.html'));
    var paragraphsByPageMN1 = extractParagraphsByPage(
        readFile('../../mulapannasapali/paragraphs.txt'));
    var pagesMN1 =
        joinPagesCollections(pagesWithContentMN1, paragraphsByPageMN1);
    var processedPagesMN1 = processPagesText(pagesMN1);
    var pagesTableImportMN1 =
        modifiedCreatePageSQLImportStatements('mula_ma_01', processedPagesMN1)
            .join('\n');

    writeFile('./mulapannasapali-vri-import.sql', pagesTableImportMN1);

    // use diffchecker.com for a more readable diff
    // expect(readFile('./mulapannasapali-vri-import.sql'),
    //     readFile('./mulapannasapali-tpr-import.sql'));
  });
}
