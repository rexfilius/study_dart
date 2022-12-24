/// Dart numbers come in 2 flavors::
/// (1) int : Integer values no larger than 64 bits, depending on the platform.
/// (2) double : 64-bit (double-precision) floating-point numbers,
/// as specified by the IEEE 754 standard.
///
/// Both int and double are subtypes of "num". The num type includes basic
/// operators such as [+, -, /, *] and is also where you'll find abs(),
/// ceil(), and floor(), among other methods.
/// (Bitwise operators, such as '>>' are defined in the int class.)
void main() {
  /// Integers are numbers without a decimal point
  var x = 1;
  var hex = 0xDEADBEEF;
  var exponent = 8e5;
  print("$x $hex $exponent");

  /// If a number includes a decimal, it is a double
  var y = 1.1;
  var exponents = 1.42e5;
  print("$y $exponents");

  /// You can also declare a variable as a num. If you do this,
  /// the variable can have both integer and double values.
  num passId = 100;
  passId += 2.5;
  print(passId);

  /// Integer literals are automatically converted to doubles when necessary
  double z = 1; // double z = 1.0
  print(z);

  /// Here's how you turn a string into a number, or vice versa:
  var one = int.parse('1'); // String -> int
  assert(one == 1);

  var onePointOne = double.parse('1.1'); // String -> double
  assert(onePointOne == 1.1);

  String oneAsString = 1.toString(); // int -> String
  assert(oneAsString == '1');

  String piAsString = 3.14159.toStringAsFixed(2); // double -> String
  assert(piAsString == '3.14');

  /// The int type specifies the traditional bitwise shift (<<, >>, >>>),
  /// complement (~), AND (&), OR (|), and XOR (^) operators, which are useful
  /// for manipulating and masking flags in bit fields.
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  /// Literal numbers are compile-time constants. Many arithmetic expressions
  /// are also compile-time constants, as long as their operands are
  /// compile-time constants that evaluate to numbers.
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  print(msUntilRetry);
}
