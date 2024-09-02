/// Dart libraries are full of functions that return 'Future'/'Stream' objects.
/// These functions are asynchronous: they return after setting up a possibly
/// time-consuming operation (such as I/O), without waiting for that operation
/// to complete.
///
/// The 'async' and 'await' keywords support asynchronous programming, letting
/// you write asynchronous code that looks similar to synchronous code.
///
/// Handling Futures::
/// When you need the result of a completed Future, you have two options:
/// -> Use async and await.
/// -> Use the Future API.
///
/// Code that uses async and await is asynchronous,
/// but it looks a lot like synchronous code.
/// To use await, code must be in an async function(function marked as 'async')
Future<void> checkVersion() async {
  var version = await lookUpVersion();
  // Do something with version
}

lookUpVersion() {}

/// NOTE: Although an async function might perform time-consuming operations,
/// it doesn't wait for those operations. Instead, the async function executes
/// only until it encounters its first await expression. Then it returns a
/// Future object, resuming execution only after the await expression completes.
