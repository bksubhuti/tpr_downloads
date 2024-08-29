void main() {
  String romanPaliText = 'na tattha rāgānus';

  String laoPaliText = convertToLaoScriptPali(romanPaliText);
  print(laoPaliText);
}

String convertToLaoScriptPali(String romanPaliText) {
  Map<String, String> conversionMap = {
    'a': 'ອ',
    'ā': 'າ',
    'i': 'ິ',
    'ī': 'ີ',
    'u': 'ຸ',
    'ū': 'ູ',
    'e': 'ເ',
    'o': 'ໂ',
    'ṃ': 'ມ',
    'ṅ': 'ງ',
    'ñ': 'ຍ',
    'ṭ': 'ຕ',
    'ḍ': 'ດ',
    'ṇ': 'ນ',
    'ḷ': 'ລ',
    'v': 'ວ',
    'h': 'ຮ',
    'p': 'ປ',
    'b': 'ບ',
    't': 'ທ',
    'd': 'ດ',
    'n': 'ນ',
    'm': 'ມ',
    'y': 'ຢ',
    'r': 'ຣ',
    'l': 'ລ',
    'k': 'ກ',
    'g': 'ກ',
    's': 'ສ',
    'j': 'ຈ',
    'ṭh': 'ຖ',
    'ph': 'ພ',
    'kh': 'ຂ',
    'gh': 'ຍ',
    'ch': 'ນ',
    'jh': 'ນ',
    'ṇḍ': 'ນດ',
    'th': 'ທ',
    'dh': 'ທ',
    'ṅkh': 'ງກ',
  };

  String laoPaliText = '';

  List<String> lines = romanPaliText.split('\n');

  for (String line in lines) {
    if (line.trim().isEmpty) {
      laoPaliText += '\n';
    } else if (line.contains('.')) {
      String linePrefix = line.split('.')[0];
      laoPaliText += '${linePrefix}.\n';
    } else {
      String convertedLine = '';
      for (int i = 0; i < line.length; i++) {
        String char = line[i];
        String convertedChar = conversionMap[char.toLowerCase()] ?? char;
        convertedLine += convertedChar;
      }
      laoPaliText += '$convertedLine\n';
    }
  }

  return laoPaliText;
}
