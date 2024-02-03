import 'package:convert_vri/extract_paragraphs.dart';
import 'package:test/test.dart';
import 'dart:io';

String readFile(String filePathRelativeToTestFile) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/test/$filePathRelativeToTestFile';
  return File(fullPath).readAsStringSync();
}

void main() {
  test('extractParagraphsByPage', () {
    expect(extractParagraphsByPage(readFile('paragraphs.txt')), [
      {
        'number': 4,
        'paragraphs': [1]
      },
      {
        'number': 98,
        'paragraphs': [99, 100, 101]
      },
      {
        'number': 324,
        'paragraphs': [1, 2]
      }
    ]);

    // Given: paragraph before the first page
    // Should: assign the paragraph to the first page
    expect(extractParagraphsByPage("""
<span class="paranum">1</span>
<a name="M0.0001"></a>"""), [
      {
        'number': 1,
        'paragraphs': [1]
      }
    ]);
  });
}
