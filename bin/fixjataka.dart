import 'dart:io';
import 'package:path/path.dart';

void main() async {
  var directory = Directory.current;
  var filePath = join(directory.path, 'jataka.csv');
  var inputFile = File(filePath);
  final outputFile = File('jataka-fixed.csv');
  final outputSink = outputFile.openWrite();

  await inputFile.readAsLines().then((lines) {
    for (final line in lines) {
      final parts = line.split(',');
      // Remove numbers from column 1
      // Remove numbers from column 1
      String column1 = parts[0].replaceAll(RegExp(r'\d+\.\s*'), '');
      String column2 = parts[1];
      String column3 = parts[2];
      final csvLine = '$column1,$column2,$column3,$column1\n';
      outputSink.write(csvLine);
    }
    outputSink.close();
  });
}
