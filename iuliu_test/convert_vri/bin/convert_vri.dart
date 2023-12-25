import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'dart:io';

void main(List<String> arguments) {
  var paragraphsTableImport = create_sql_statements_from_paragraphs_by_page(extract_paragraphs_by_page(readFile('../../anudipanipatha/paragraphs.txt'))).join('\n');
  writeFile('./paragraphs-import.sql', paragraphsTableImport);
}

String readFile(String relativeFilePath) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/bin/$relativeFilePath';
  return File(fullPath).readAsStringSync();
}

void writeFile(String relativeFilePath, String content) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/bin/$relativeFilePath';
  final file = File(fullPath);
  file.writeAsString(content);
}
