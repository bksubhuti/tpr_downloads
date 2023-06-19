/*import 'dart:io';
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

      String definition = parts[1]
          .replaceAll(
              'It\\\\\'s not that I don\\\'t love you, it\\\\\'s that I don\\\'t love you', "")
          .replaceAll('It\\\'s not that I don\\\'t love you', "")
          .replaceAll('it\\\'s that I don\\\'t love you', "")
          .replaceAll(
              'I\\\'m not sure if it\\\'s because I don\\\'t know what to do with it', "")
          .replaceAll(
              'I\\\'m not sure if I\\\'m going to be able to do that, but I\\\'m sure I\\\'m going to be able to do that', "")
          .replaceAll('I\\\'m not sure what to do', "")
          .replaceAll(
              'I\\\'m not sure if I\\\'m going to be able to do that', "")
          .replaceAll('I\\\'m not sure if this is a good idea,', "")
          .replaceAll('but I\\\'m not sure if this is a good idea', "")
          .replaceAll(
              'I\\\'m not sure if it\\\'s because I don\\\'t know what I\\\'m talking about',
              "")
          .replaceAll('not sure if I\\\'m going to be able to do that', "")
          .replaceAll('I\\\'m not sure if this is the case', "")
          .replaceAll(
              'I\\\'m not sure what I\\\'m talking about, but I\\\'m not sure what I\\\'m talking about',
              "")
          .replaceAll('I\\\'m not sure what I\\\'m talking about', "")
          .replaceAll('but I\\\'m going to be able to do it.', "")
          .replaceAll('but I\\\'m going to be able to do that', "")
          .replaceAll('but I\\\'m not going to be able to do that', "")
          .replaceAll('I\\\'m not going to be able to do that', "")
          .replaceAll('and I\\\'m going to be able to do that.', "")
          .replaceAll('I\\\'m going to be able to do that', "")
          .replaceAll('in the lottery', "")
          .replaceAll('in lottery', "")
          .replaceAll('(lottery)', "")
          .replaceAll('CL=0', 'Google Translate');

      // now clean up some other items.
      // sql statements need to have single quotes doubled
      definition = definition
          .replaceAll('\\\'', '\'')
          .replaceAll('\\n', '<br>')
          .replaceAll('\r', '');

      final csvLine =
          '$term@<p class="definition">${definition.substring(1, definition.length - 2)}</p>@8\n';
      outputSink.write(csvLine);
    }

    outputSink.close();
  });
}
*/

import 'dart:io';
import 'package:path/path.dart';

void main() {
  var directory = Directory.current;
  var filePath = join(directory.path, 'peudump.txt');
  var inputFile = File(filePath);
  final outputFile = File('peu.csv');

  inputFile.readAsLines().then((lines) {
    List<String> outputLines = []; // List to accumulate the lines

    for (final line in lines) {
      int splitIndex = line.indexOf(':');
      final term =
          line.substring(0, splitIndex).replaceAll('\'', '').trimLeft();
      String definition = line.substring(splitIndex + 1).trim();

      // Remove the surrounding single quotes at the beginning
//      if (definition.startsWith('\'') && definition.endsWith('\'')) {
      //      definition = definition.substring(1, definition.length - 1);
      //  }
      // Remove the surrounding single quotes at the beginning
      if (definition.startsWith('\'')) {
        definition = definition.substring(1);
      }
      if (definition.endsWith('\',')) {
        definition = definition.substring(0, definition.length - 2);
      }

      // Your replacements here
      // ...
      definition = definition
          .replaceAll(
              'It\\\'s not that I don\\\'t love you, it\\\'s that I don\\\'t love you', "")
          .replaceAll('It\\\'s not that I don\\\'t love you', "")
          .replaceAll('it\\\'s that I don\\\'t love you', "")
          .replaceAll(
              'I\\\'m not sure if it\\\'s because I don\\\'t know what to do with it', "")
          .replaceAll(
              'I\\\'m not sure if I\\\'m going to be able to do that, but I\\\'m sure I\\\'m going to be able to do that', "")
          .replaceAll('I\\\'m not sure what to do', "")
          .replaceAll(
              'I\\\'m not sure if I\\\'m going to be able to do that', "")
          .replaceAll('I\\\'m not sure if this is a good idea,', "")
          .replaceAll('but I\\\'m not sure if this is a good idea', "")
          .replaceAll(
              'I\\\'m not sure if it\\\'s because I don\\\'t know what I\\\'m talking about',
              "")
          .replaceAll('not sure if I\\\'m going to be able to do that', "")
          .replaceAll('I\\\'m not sure if this is the case', "")
          .replaceAll(
              'I\\\'m not sure what I\\\'m talking about, but I\\\'m not sure what I\\\'m talking about',
              "")
          .replaceAll('I\\\'m not sure what I\\\'m talking about', "")
          .replaceAll('but I\\\'m going to be able to do it.', "")
          .replaceAll('but I\\\'m going to be able to do that', "")
          .replaceAll('but I\\\'m not going to be able to do that', "")
          .replaceAll('I\\\'m not going to be able to do that', "")
          .replaceAll('and I\\\'m going to be able to do that.', "")
          .replaceAll('I\\\'m going to be able to do that', "")
          .replaceAll('in the lottery', "")
          .replaceAll('in lottery', "")
          .replaceAll('(lottery)', "")
          .replaceAll('CL=0', 'Google Translate');

      // sql statements need to have single quotes doubled
      definition = definition
          .replaceAll('\\\'', '\'')
          .replaceAll('\\n', '<br>')
          .replaceAll('\r', '');

      final csvLine = '$term@<p class="definition">$definition</p>@8\n';

      outputLines.add(csvLine); // Add the line to the list
    }

    // Write all lines at once
    outputFile.writeAsStringSync(outputLines.join());
  });
}
