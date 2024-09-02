void main() {
  /*
  * Dart has all the usual operators you're familiar with from other languages
  * like C, Swift and Kotlin.
  * Some examples of Dart's operators include: arithmetic, equality,
  * increment and decrement, comparison, logical.
  * Dart also allows for operator overloading, as in C++ and Kotlin
  */

  /// Arithmetic Operator
  /// For division, even with integers, Dart infers the resulting variable
  /// to be a double.
  print(40 + 2); // 42
  print(44 - 2); // 42
  print(21 * 2); // 42
  print(84 / 2); // 42.0
  print(392 % 50); // 42 - (7 remainder 42)
  print("");

  /// Equality Operators
  /// Dart uses double-equals (==) equality and not-equals (!=) operators
  print(42 == 43); // false
  print(42 != 43); // true

  /// Comparison Operators
  /// Dart uses the typical comparison operators:
  /// Less than (<). Greater than (>). Equal to (=)
  print(42 < 43); // true
  print(42 >= 43); // false
  print("");

  /// Compound arithmetic/assignment operators
  var value = 42.0;

  value += 1;
  print(value); // 43.0
  value -= 1;
  print(value); // 42.0
  value *= 2;
  print(value); // 84.0
  value /= 2;
  print(value); // 42.0
  print("");

  /// Logical Operators
  print((41 < 42) && (42 < 43)); // true
  print((41 < 42) || (42 > 43)); // true
  print(!(41 < 42)); // false

}
