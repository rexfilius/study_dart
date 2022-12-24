/// A future represents a single value that will arrive in the future.
/// A stream represents multiple values that will arrive in the future.
///
/// Think of a stream like a list of futures. You can imagine a stream
/// meandering through the woods as the autumn leaves fall onto the surface
/// of the water. Each time a leaf floats by, it's like the value that
/// a Dart stream provides.
///
/// Streaming music online as opposed to downloading the song before playing it
/// is another good comparison. When you stream music, you get lots of little
/// chunks of data, but when you download the whole file, you only get a single
/// value, which is the entire file — a little like what a future returns.
///
/// Streams, which are of type Stream, are used extensively in Dart
/// and Dart-based frameworks. Here are some examples:
/// 1. Reading a large file stored locally where new data from
/// the file comes in chunks.
/// 2. Downloading a file from a remote server.
/// 3. Listening for requests coming into a server.
/// 4. Representing user events such as button clicks.
/// 5. Relaying changes in app state to the UI.
import 'dart:io';

Future<void> main() async {
  /// Reading from a File normally
  // final file = File('assets/text.txt');
  // final contents = await file.readAsString();
  // print(contents);

  /// Reading from a Stream
  // final file2= File('assets/text_long.txt');
  // final stream = file2.openRead();
  // stream.listen((data) => print(data.length));

  /// NOTE: By default, only a single object can listen to a stream. This is
  /// known as a SINGLE SUBSCRIPTION STREAM. If you want more than one object
  /// to be notified of stream events, you need to create a BROADCAST STREAM,
  /// which you could do like so:
  // final broadcastStream = stream.asBroadcastStream();
  print('');

  /// Just as you can use "callbacks" or "async-await" to get the value of a
  /// future, there are also two ways to get the values of a stream.
  /// (1) Callbacks (2) Asynchronous for-loop.
  /// The await for keywords cause the loop to pause until the
  /// next data event comes in.
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  await for (var data in stream) {
    print(data.length);
  }
}
