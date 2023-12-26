import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'dart:io';

void main(List<String> arguments) {
  var pagesWithContent = extractMyanmarEditionPagesFromVriHtml(
      readFile('../../anudipanipatha/e0401n.nrf.html'));
  var paragraphsByPage =
      extractParagraphsByPage(readFile('../../anudipanipatha/paragraphs.txt'));
  var pages = joinPagesCollections(pagesWithContent, paragraphsByPage);

  var booksTableImport = """
INSERT INTO books VALUES('annya_sadda_18','annya','annya_sadda','anudīpanīpāṭha',1,324,324);""";
  var tocsTableImport = """
INSERT INTO tocs VALUES('annya_sadda_18', '1. cittasaṅgahaanudīpanā', 'chapter', 1, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '2. cetasikasaṅgahaanudīpanā', 'chapter', 78, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '3. pakiṇṇakasaṅgahaanudīpanā', 'chapter', 107, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '4. vīthisaṅgahaanudīpanā', 'chapter', 120, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '5. vīthimuttasaṅgahaanudīpanā', 'chapter', 143, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '6. rūpasaṅgahaanudīpanā', 'chapter', 189, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '7. samuccayasaṅgahaanudīpanā', 'chapter', 229, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '8. paccayasaṅgahaanudīpanā', 'chapter', 246, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '9. kammaṭṭhānasaṅgahaanudīpanā', 'chapter', 275, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', 'nigamagāthāsu.', 'subhead', 321, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', 'dīpaniyā nigamagāthāsu.', 'subhead', 323, NULL);""";
  var paragraphsTableImport =
      createParagraphsSQLImportStatements(paragraphsByPage).join('\n');
  var pagesTableImport = createPageSQLImportStatements(pages).join('\n');
  var anudipanipathaImport = [
    booksTableImport,
    tocsTableImport,
    paragraphsTableImport,
    pagesTableImport
  ].join('\n');

  writeFile('./anudipanipatha-import.sql', anudipanipathaImport);
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
