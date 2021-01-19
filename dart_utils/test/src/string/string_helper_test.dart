import 'package:flutter_test/flutter_test.dart';

import 'package:dart_utils/dart_utils.dart';

void main() {
  test('Normalize', () {
    var text = 'ÁÉÍÓÚÀÈÌÒÙÃẼĨÕŨ';

    expect(text.normalize(), 'aeiouaeiouaeiou');
  });

  test('Capitalize', () {
    var text = 'text';

    expect(text.capitalize(), 'Text');
  });

  test('Title', () {
    var title = ' the title ';

    expect(title.title(), 'The Title');
  });

  test('First Letter Of Words In Uppercase', () {
    var words = ' foo bar ';

    expect(words.firstLetterOfWordsInUppercase(), 'FB');
  });

  test('First Letter In Uppercase', () {
    var words = ' foo bar ';

    expect(words.firstLetterInUppercase(), 'F');
  });
}
