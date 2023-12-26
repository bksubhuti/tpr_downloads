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
INSERT INTO tocs VALUES('annya_sadda_18', '2. cetasikasaṅgahaanudīpanā', 'chapter', 79, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '3. pakiṇṇakasaṅgahaanudīpanā', 'chapter', 108, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '4. vīthisaṅgahaanudīpanā', 'chapter', 121, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '5. vīthimuttasaṅgahaanudīpanā', 'chapter', 144, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '6. rūpasaṅgahaanudīpanā', 'chapter', 190, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '7. samuccayasaṅgahaanudīpanā', 'chapter', 230, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '8. paccayasaṅgahaanudīpanā', 'chapter', 247, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', '9. kammaṭṭhānasaṅgahaanudīpanā', 'chapter', 276, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', 'nigamagāthāsu.', 'subhead', 322, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', 'dīpaniyā nigamagāthāsu.', 'subhead', 324, NULL);""";
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
