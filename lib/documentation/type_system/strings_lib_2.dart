/// LIBRARY TOUR
void main() {
  /// You can easily convert strings to their uppercase and lowercase variants
  /// These methods don’t work for every language.
  var onLow = 'LOW';
  var onHigh = 'high';
  print(onLow.toLowerCase());
  print(onHigh.toUpperCase());
  print('');

  /// Remove all leading and trailing white space with trim().
  var trimText = "   nobody    ";
  print("=${trimText.trim()}=");
  print("=${trimText.trimLeft()}=");
  print("=${trimText.trimRight()}=");
  print('');

  /// To check whether a string is empty (length is zero), use isEmpty
  var emptyString = '';
  print("Text = $emptyString");
  print("Is text empty: ${emptyString.isEmpty}");
}
