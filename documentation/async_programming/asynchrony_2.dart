import 'dart:async';

/// Use try, catch, and finally to handle errors
/// and cleanup in code that uses await
randomIO() async {
  try {
    var version = await anotherRandomIO();
  } catch (e) {
    // React to inability to look up the version
  }
}

/// You can use await multiple times in an async function.
someBackground() async {
  var entrypoint = await anotherRandomIO();
  var exitCode = await runInBackground();
  await runIO();
}

anotherRandomIO() {}

runInBackground() {}

runIO() {}

/// In 'await expression', the value of 'expression' is usually a Future;
/// if it isn't, then the value is automatically wrapped in a Future.
/// This Future object indicates a promise to return an object.
/// The value of 'await expression 'is that returned object.
/// The await expression makes execution pause until that object is available.
///
/// If you get a compile-time error when using await, make sure await is in
/// an async function. e.g. to use await in your app's main() function,
/// the body of main() must be marked as 'async'
///
/// LINTER RULES: unawaited_futures
/// Future results in async function bodies must be awaited or marked unawaited
/// using dart:async.
/// DO await functions that return a Future inside of an async function body.
/// It's easy to forget await in async methods as naming conventions usually
/// don't tell us if a method is sync or async (except for some in dart:io).
/// When you really do want to start a fire-and-forget Future, the recommended
/// way is to use unawaited function from dart:async
void main() async {
  await doSomething();

  unawaited(doSomething()); // Explicitly-ignored fire-and-forget.
}

Future<void> doSomething() async {
  print("do something");
}
