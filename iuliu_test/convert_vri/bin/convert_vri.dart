import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'dart:io';

void main(List<String> arguments) {
  var pagesWithContent = cut_vri_html_into_myanmar_edition_pages(readFile('../../anudipanipatha/e0401n.nrf.html'));
  var paragraphsByPage = extract_paragraphs_by_page(readFile('../../anudipanipatha/paragraphs.txt'));
  var pages = join_pages_collections(pagesWithContent, paragraphsByPage);

  var paragraphsTableImport = create_sql_statements_from_paragraphs_by_page(paragraphsByPage).join('\n');
  writeFile('./paragraphs-import.sql', paragraphsTableImport);

  var pagesTableImport = create_page_sql_import_statements(pages).join('\n');
  writeFile('./pages-import.sql', pagesTableImport);
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
