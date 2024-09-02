/// LIBRARY TOUR
void main() {
  /// You can find particular locations within a string, as well as check
  /// whether a string begins with or ends with a particular pattern
  var neverText = "Never odd or even";
  print("Does '$neverText' contains 'odd' ${neverText.contains('odd')}");
  print("Does '$neverText' contains 'odd' ${neverText.startsWith('Never')}");
  print("Does '$neverText' contains 'odd' ${neverText.endsWith('even')}");
  print("The index of 'odd' in '$neverText' is ${neverText.indexOf('odd')}");
  print("");

  /// You can also extract a substring or
  /// split a string into a list of substrings:
  print("index 6-9 of '$neverText' = ${neverText.substring(6, 9)}");
  var splitNeverText = neverText.split(' ');
  print("Text: $neverText");
  print("First word: ${splitNeverText[0]}");
  print("");

  /// Use split() with an empty string parameter to get
  /// a list of all characters (as Strings); good for iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }
  print('');
}
