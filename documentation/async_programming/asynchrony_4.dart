/// Handling Streams::
/// When you need to get values from a Stream, you have two options:
/// -> Use async and an asynchronous for loop (await for).
/// -> Use the Stream API.
///
/// NOTE: Before using 'await for', be sure that it makes the code clearer and
/// that you really do want to wait for all of the stream's results.
/// e.g. you usually should not use await for for UI event listeners,
/// because UI frameworks send endless streams of events.
void main() async {
  Stream<String> identifiers = ["", "", "", ""] as Stream<String>;
  await for (var id in identifiers) {
    // Executes each time the stream emits a value.
  }
}

/// An asynchronous for loop has the following form::
/// => await for (varOrType identifier in expression) {}
///
/// The value of 'expression' must have type Stream.
/// Execution proceeds as follows:
/// -> Wait until the stream emits a value.
/// -> Execute the body of the for loop, with the variable
/// set to that emitted value.
/// -> Repeat 1 and 2 until the stream is closed.
///
/// To stop listening to the stream, you can use a break or return statement,
/// which breaks out of the for loop and unsubscribes from the stream.
