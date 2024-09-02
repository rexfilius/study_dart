import 'dart:math';

/// LIBRARY TOUR
/// The dart:math library provides common functionality such as sine and cosine,
/// maximum and minimum, and constants such as pi and e. Most of the
/// functionality in the Math library is implemented as top-level functions.
void main() {
  /// The Math library provides basic trigonometric functions
  /// Note: These functions use radians, not degrees!
  // Cosine
  assert(cos(pi) == -1.0);

  // Sine
  var degrees = 30;
  var radians = degrees * (pi / 180); // radians is now 0.52359.
  var sinOf30degrees = sin(radians); // sin 30° = 0.5
  assert((sinOf30degrees - 0.5).abs() < 0.01);

  /// The Math library provides max() and min() methods:
  assert(max(1, 1000) == 1000);
  assert(min(1, -1000) == -1000);

  // See the Math library for additional constants.
  print("e - $e"); // 2.718281828459045
  print("pi - $pi"); // 3.141592653589793
  print("square root of 2 - $sqrt2"); // 1.4142135623730951
  print('');

  /// Generate random numbers with the Random class. You can optionally provide
  /// a seed to the Random constructor.
  /// WARNING: The default implementation of Random supplies a stream of
  /// pseudorandom bits that are unsuitable for cryptographic purposes.
  /// To create a cryptographically secure random number generator,
  /// use the Random.secure() constructor.
  var random = Random();
  print("random double - ${random.nextDouble()}"); // Between 0.0 and 1.0
  print("random integer - ${random.nextInt(10)}"); // Between 0 and 9.
  print("random boolean - ${random.nextBool()}"); // true or false
}