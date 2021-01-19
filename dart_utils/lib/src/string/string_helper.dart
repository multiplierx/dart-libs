extension StringHelper on String {
  ///
  /// Remove special characters
  ///
  String normalize() {
    return toLowerCase()
        .replaceAll(RegExp(r'(á|ã|à)'), 'a')
        .replaceAll(RegExp(r'(é|ẽ|è)'), 'e')
        .replaceAll(RegExp(r'(í|ĩ|ì)'), 'i')
        .replaceAll(RegExp(r'(ó|õ|ò)'), 'o')
        .replaceAll(RegExp(r'(ú|ũ|ù)'), 'u');
  }

  ///
  /// Make a string's first character uppercase
  ///
  String capitalize() => length > 1 ? this[0].toUpperCase() + substring(1) : '';

  ///
  /// Format for title
  /// Ex: `the title` -> `The Title`
  ///
  String title() =>
      trim().split(' ').map((e) => e.toLowerCase().capitalize()).join(' ');

  /// Get the first letter of words, in uppercase
  /// Ex: `Jackie Chan` -> `JC`
  ///
  String firstLetterOfWordsInUppercase() =>
      trim().split(' ').map((e) => e[0].toUpperCase()).join('');

  /// Get the first letter of the first word in uppercase
  /// Ex: `Jackie Chan` -> `J`
  ///
  String firstLetterInUppercase() => trim().split('').first.toUpperCase();
}
