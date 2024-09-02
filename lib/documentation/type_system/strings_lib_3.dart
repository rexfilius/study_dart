/// LIBRARY TOUR
void main() {
  /// Strings are immutable objects, which means you can create them but you
  /// can't change them. e.g. the method replaceAll() returns a new String
  /// without changing the original String
  var greetTemplate = "Hello, NAME";
  var greetBob = greetTemplate.replaceAll(RegExp('NAME'), 'Bob');
  print("Is '$greetTemplate' == '$greetBob'? ${greetTemplate == greetBob}");

  /// To programmatically generate a string, you can use StringBuffer.
  /// A StringBuffer doesn't generate a new String object until toString()
  /// is called. The writeAll() method has an optional second parameter that
  /// lets you specify a separator - in this case, a space.
  var sb = StringBuffer()
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');
  print(sb);
  print('');

  /// The RegExp class provides the same capabilities as JS regular expressions
  /// Use regular expressions for efficient searching & pattern matching of strings.
  // Here's a regular expression for one or more digits.
  var numbers = RegExp(r'\d+');
  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains() can use a regular expression.
  print(!allCharacters.contains(numbers)); // true
  print(someDigits.contains(numbers)); // true

  // Replace every match with another string.
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  print(exedOut == 'llamas live XX to XX years'); // true
  print('');

  /// You can work directly with the RegExp class, too. The Match class
  /// provides access to a regular expression match.
  // Check whether the reg exp has a match in a string.
  print(numbers.hasMatch(someDigits)); // true

  // Loop through all matches.
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }
}
