void main() {
  /// Catching, or capturing, an exception stops the exception from propagating
  /// (unless you rethrow the exception). Catching an exception gives you
  /// a chance to handle it.
  try {
    print("");
  } on FormatException {
    print("");
  }

  /// To handle code that can throw more than one type of exception, you can
  /// specify multiple catch clauses. The first catch clause that matches the
  /// thrown object's type handles the exception. If the catch clause does not
  /// specify a type, that clause can handle any type of thrown object.
  try {
    print("breedMoreLlamas");
  } on FormatException {
    print("buyMoreLlamas"); // A specific exception
  } on Exception catch (e) {
    print('Unknown exception: $e'); // Anything else that is an exception
  } catch (e) {
    print('Something really unknown: $e'); // No specified type, handles all
  }

  /// You can use either 'on' or 'catch' or both.
  /// -> Use on when you need to specify the exception type.
  /// -> Use catch when your exception handler needs the exception object.
  /// You can specify one or two parameters to catch(). The first is the
  /// exception that was thrown, and the second is the
  /// stack trace (a StackTrace object).
  try {
    // ···
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }

  /// Partially handling an exception
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}

/// To partially handle an exception, while allowing it to propagate,
/// use the rethrow keyword
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}
