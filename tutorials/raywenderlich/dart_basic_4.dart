void main() {
  /// Immutability
  /// Dart uses the keywords const and final for values that don't change.
  /// Use const for values that are known at compile-time.
  /// Use final for values that don't have to be known at compile-time
  /// but cannot be reassigned after being initialized.
  /// NOTE: final acts like val in Kotlin or let in Swift.
  /// You can use const and final in place of var and let type inference
  /// determine the type
  const speedOfLight = 299792458;
  print("Speed of light is $speedOfLight");

  final planet = 'Jupiter';
  // planet = 'Mars';
  // error: planet can only be set once

  final String moon = 'Europa';
  print('$planet has a moon, $moon');
  print('');

  /// Nullability
  /// To tell Dart that you want to allow the value null, add ? after the type.
  String? middleName;
  print("MiddleName is $middleName"); // null

  /// Null Aware Operators
  /// The double-question-mark operator, ??, is like the Elvis operator in
  /// Kotlin: It returns the left-hand operand if the object isn't null.
  /// If the object is null, it returns the right-hand value.
  var name = middleName ?? 'unavailable';
  print("Name=MiddleName, Name is $name"); // none

  /// The "?." operator protects you from accessing properties of null objects.
  /// It returns null if the object itself is null. Otherwise, it returns the
  /// value of the property on the right-hand side.
  print("MiddleName string length is ${middleName?.length}"); // null
}
