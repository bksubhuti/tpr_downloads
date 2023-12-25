import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'dart:io';

void main(List<String> arguments) {
  var pagesWithContent = cutVriHtmlIntoMyanmarEditionPages(
      readFile('../../anudipanipatha/e0401n.nrf.html'));
  var paragraphsByPage = extractParagraphsByPage(
      readFile('../../anudipanipatha/paragraphs.txt'));
  var pages = joinPagesCollections(pagesWithContent, paragraphsByPage);

  var paragraphsTableImport =
      createParagraphsSQLImportStatements(paragraphsByPage)
          .join('\n');
  writeFile('./paragraphs-import.sql', paragraphsTableImport);

  var pagesTableImport = createPageSQLImportStatements(pages).join('\n');
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
