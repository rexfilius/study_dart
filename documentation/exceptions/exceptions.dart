/// Dart code can throw and catch exceptions. Exceptions are errors indicating
/// that something unexpected happened. If the exception isn't caught, the
/// isolate that raised the exception is suspended, and typically the isolate
/// and its program are terminated.
///
/// In contrast to Java, all of Dart's exceptions are unchecked exceptions.
/// Methods don't declare which exceptions they might throw, and you aren't
/// required to catch any exceptions.
///
/// Dart provides Exception and Error types, as well as numerous predefined
/// subtypes. You can, of course, define your own exceptions. However, Dart
/// programs can throw any non-null object - not just Exception and Error
/// objects - as an exception.
///
/// Note: Production-quality code usually throws types that implement
/// Error or Exception
void main() {
  /// Throwing or Raising an exception
  var section = 32 / 4;
  if (section < 3) {
    throw FormatException('Expected at least 1 section');
  }

  /// You can also throw arbitrary objects.
  throw 'Out of llamas!';
}

/// Because throwing an exception is an expression, you can throw exceptions
/// in => statements, as well as anywhere else that allows expressions.
void distanceTo(String other) => throw UnimplementedError();
