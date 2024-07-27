import 'package:test/test.dart';
import 'package:convert_vri/split_pages.dart';
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
    return "INSERT INTO pages VALUES($idNumber,'$bookId',$number,replace(replace('$content\\r\\n','\\r',char(13)),'\\n',char(10)),'$paragraphsStr');"
        .replaceAll(RegExp(r' </p>\\r\\n'), '</p>\\r\\n');
  }).toList();
}

String replaceStartQuote(String string) {
  return string.replaceAllMapped(
      RegExp(r'(<p class="bodytext">)(<.*?><.*?><.*?>\d*?<.*?>\. )?(?:")'),
      (Match m) => "${m[1]}${m.group(2) ?? ''}");
}

List<Map<String, dynamic>> processPagesText(List<Map<String, dynamic>> pages) {
  return pages.map((page) {
    return {
      'number': page['number'],
      'content': List<String>.from(page['content']).map((textLine) {
        var newText = textLine
            .toLowerCase()
            .replaceAll('‘‘', '"')
            .replaceAll('’’', '"')
            .replaceAll(';', ',')
            .replaceAll(RegExp(r'name="p(?=\d.\d{4}")'), 'name="P')
            .replaceAll(RegExp(r'name="v(?=\d.\d{4}")'), 'name="V')
            .replaceAll(RegExp(r'name="t(?=\d.\d{4}")'), 'name="T')
            .replaceAll(RegExp(r'name="m(?=\d.\d{4}")'), 'name="M')
            .replaceAllMapped(
                RegExp(r'<a name="para(\d+)"></a>'),
                (Match m) =>
                    '<a name="para${m[1]}"></a><a name="para${m[1]}_mn1"></a>');
        return replaceStartQuote(newText);
      }),
      'paragraphs': page['paragraphs']
    };
  }).toList();
}

List<int> findMissingNumbers(List<int> numbers) {
  var numbersSet = numbers.toSet();
  List<int> missingNumbers = [];

  for (int i = 1; i <= 415; i++) {
    if (!numbersSet.contains(i)) {
      missingNumbers.add(i);
    }
  }

  return missingNumbers;
}

void main() {
  test('mulapannasapli import diff', () {
    var pagesWithContentMN1 = extractMyanmarEditionPagesFromVriHtml(
        readFile('../../mulapannasapali/s0201m.mul.html'));
    var pagesMN1 = addParagraphsToPages(pagesWithContentMN1);
    var processedPagesMN1 = processPagesText(pagesMN1);
    var pagesTableImportMN1 =
        modifiedCreatePageSQLImportStatements('mula_ma_01', processedPagesMN1)
            .join('\n');

    // print('Missing MN1 pages:');
    // print(findMissingNumbers(
    //     processedPagesMN1.map((e) => e['number'] as int).toList()));

    // writeFile('./mulapannasapali-vri-import.sql', pagesTableImportMN1);

    // use diffchecker.com for a more readable diff
    // expect(readFile('./mulapannasapali-vri-import.sql'),
    //     readFile('./mulapannasapali-tpr-import.sql'));
  });

  test('replaceStartQuote', () {
    expect(replaceStartQuote('<p class="bodytext">"tejaṃ'),
        '<p class="bodytext">tejaṃ');
    expect(
        replaceStartQuote(
            '<p class="bodytext"><a name="para2"></a><span class="paranum">2</span>. "idha,'),
        '<p class="bodytext"><a name="para2"></a><span class="paranum">2</span>. idha,');
  });
}
