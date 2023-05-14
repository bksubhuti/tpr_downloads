import 'dart:io';
import 'package:path/path.dart';

void main() {
  var directory = Directory.current;
  var filePath = join(directory.path, 'peudump.txt');
  var inputFile = File(filePath);
  final outputFile = File('peu.csv');
  final outputSink = outputFile.openWrite();

  inputFile.readAsLines().then((lines) {
    for (final line in lines) {
      final parts = line.split(':');
      final term = parts[0].replaceAll('\'', '').trimLeft();

      final definition = parts[1]
          .replaceAll('\'', '')
          .replaceAll('\n', '<br>')
          .replaceAll('\r', '')
          .replaceAll(
              'It\'s not that I don\'t love you, it\'s that I don\'t love you',
              "")
          .replaceAll('It\'s not that I don\'t love you', "")
          .replaceAll('it\'s that I don\'t love you', "")
          .replaceAll(
              'I\'m not sure if it\'s because I don\'t know what to do with it',
              "")
          .replaceAll(
              'I\'m not sure if I\'m going to be able to do that, but I\'m sure I\'m going to be able to do that',
              "")
          .replaceAll('I\'m not sure what to do', "")
          .replaceAll('I\'m not sure if I\'m going to be able to do that', "")
          .replaceAll('I\'m not sure if this is a good idea,', "")
          .replaceAll('but I\'m not sure if this is a good idea', "")
          .replaceAll(
              'I\'m not sure if it\'s because I don\'t know what I\'m talking about',
              "")
          .replaceAll('not sure if I\'m going to be able to do that', "")
          .replaceAll('I\'m not sure if this is the case', "")
          .replaceAll(
              'I\'m not sure what I\'m talking about, but I\'m not sure what I\'m talking about',
              "")
          .replaceAll('I\'m not sure what I\'m talking about', "")
          .replaceAll('in the lottery', "")
          .replaceAll('in lottery', "")
          .replaceAll('(lottery)', "")
          .replaceAll('CL=0', 'Google Translate');
      final csvLine =
          '$term@<p class="definition">${definition.substring(0, definition.length - 1)}</p>@8\n';
      outputSink.write(csvLine);
    }

    outputSink.close();
  });
}
