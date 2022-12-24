void main() {
  /// You can create a "raw" string by prefixing it with r.
  var rawString = r"In a raw string, not even \n gets special treatment.";
  print(rawString);

  /// Literal strings are compile-time constants, as long as any interpolated
  /// expression is a compile-time constant that evaluates to null
  /// or a numeric, string, or boolean value.
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
  print(validConstString);
}
