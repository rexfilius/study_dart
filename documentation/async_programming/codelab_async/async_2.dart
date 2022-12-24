/**
 * A future is an instance of the Future class. A future represents the result of
 * an asynchronous operation, and can have two states: uncompleted or completed.
 * Note: Uncompleted is a Dart term referring to the state of a future before it
 * has produced a value.
 *
 * Uncompleted: When you call an asynchronous function, it returns an uncompleted
 * future. That future is waiting for the function's asynchronous operation to finish
 * or to throw an error.
 *
 * Completed: If the asynchronous operation succeeds, the future completes with a value.
 * Otherwise it completes with an error.
 *
 * Completing with a value: A future of type Future<T> completes with a value of type T.
 * e.g. a future with type Future<String> produces a string value. If a future doesn't
 * produce a usable value, then the future's type is Future<void>.
 *
 * Completing with an error: If the asynchronous operation performed by the function
 * fails for any reason, the future completes with an error.
 */
Future<void> fetchUserOrder2() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

Future<void> fetchUserOrder3() {
// Imagine that this function is fetching user info but encounters a bug
  return Future.delayed(const Duration(seconds: 2),
      () => throw Exception('Logout failed: user ID is invalid'));
}

void main() {
  /**
   * In the code below, even though fetchUserOrder() executes before the print()
   * call, the console shows the output - (“Fetching user order…”) before the output
   * from fetchUserOrder() (“Large Latte”). This is because fetchUserOrder()
   * delays before it prints “Large Latte”.
   */
  fetchUserOrder2();
  print('Fetching user order...');

  /// Completing with an error
  // fetchUserOrder3();
  print('Fetching user order...');
}
