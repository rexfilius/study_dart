/// To represent boolean values, Dart has a type named "bool".
/// Only two objects have type bool: the boolean literals "true" and "false",
/// which are both compile-time constants. Dart's type safety means that you
/// can't use code like 'if (non-booleanValue)' or 'assert (non-booleanValue)'.
void main() {
  // Check for an empty string.
  var fullName = '';
  print(fullName.isEmpty); // true

  // Check for zero.
  var hitPoints = 0;
  print(hitPoints <= 0); // true

  // Check for null.
  var unicorn;
  print(unicorn == null); // true

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  print(iMeantToDoThis.isNaN); // true
}
