import 'dart:io';
import 'dart:async';

/// Cancelling a stream::
/// You may use the 'cancelOnError' parameter to tell the stream that you want
/// to stop listening in the event of an error. However, even if there isn't an
/// error, you should always cancel your subscription to a stream if you no
/// longer need it. This allows Dart to clean up the memory the stream was
/// using. Failing to do so can cause a memory leak.
Future<void> main() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  StreamSubscription<List<int>>? subscription;

  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () {
      print('All finished');
    },
  );
  // 'onDone' won't be called because the Stream never completed.
}
