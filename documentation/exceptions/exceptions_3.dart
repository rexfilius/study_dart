void main() {
  /// To ensure that some code runs whether or not an exception is thrown,
  /// use a finally clause. If no catch clause matches the exception,
  /// the exception is propagated after the finally clause runs
  try {
    print("breedMoreLlamas");
  } finally {
    // Always clean up, even if an exception is thrown.
    print("cleanLlamaStalls");
  }

  /// The finally clause runs after any matching catch clauses.
  try {
    print("breedMoreLlamas");
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {
    print("cleanLlamaStalls"); // Then clean up.
  }
}

/// LIBRARY TOUR
/// Throwing an application-specific exception is a common way to indicate that
/// an error has occurred. You can define a custom exception by implementing
/// the Exception interface
class FooException implements Exception {
  final String? message;

  const FooException([this.message]);

  @override
  String toString() => message ?? 'FooException';
}
