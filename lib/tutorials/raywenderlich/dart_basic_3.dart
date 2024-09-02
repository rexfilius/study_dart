void main() {
  /// Strings are expressed in Dart using text surrounded by either single or
  /// double quotes. You can use either var and type inference or String
  /// to create a string variable.
  var firstName = 'Albert';
  String lastName = "Einstein";

  /// You can embed the value of an expression inside a string by using the
  /// dollar sign symbol: ${expression}.
  /// If the expression is an identifier, you can omit the { }.
  var physicist = "$firstName $lastName likes the number ${84 / 2}";
  print(physicist);
  print('');

  /// Escaping Strings
  /// The escape sequences used in Dart are similar to those used in other
  /// C-like languages. e.g. you use \n for a new line.
  /// If there are special characters in the string, use '\' to escape them
  /// This example below uses single quotes, so it needs an escape sequence.
  /// You wouldn't need an escape sequence if you used double quotes.
  /// If you need to show escape sequences within the string, you can use raw
  /// strings, which are prefixed by r.
  var quote =
      'If you can\'t explain it simply\nyou don\'t understand it well enough.';
  print(quote);

  var rawString =
      r"If you can't explain it simply\nyou don't understand it well enough.";
  print(rawString);
  print('');
}
