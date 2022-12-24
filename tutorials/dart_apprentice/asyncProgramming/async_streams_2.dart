import 'dart:io';

/// ERROR HANDLING: Like futures, stream events can also produce an error rather
/// than a value. You can handle errors using a callback or try-catch blocks.
Future<void> main() async {
  /// Error Handling - Using Callbacks
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  stream.listen(
    (data) {
      print(data.length);
    },
    onError: (error) {
      print(error);
    },
    onDone: () {
      print('All finished');
    },
  );

  /// NOTE::
  /// (1) When an error occurs, it won't cancel the stream, and you'll continue
  /// to receive more data events. If you actually did want to cancel the stream
  /// after an error, then 'listen' function also has a 'cancelOnError'
  /// parameter which you can set to true.
  /// (2) When a stream finishes sending all of its data, it'll fire a done
  /// event. This gives you a chance to respond with an 'onDone' callback.
}
