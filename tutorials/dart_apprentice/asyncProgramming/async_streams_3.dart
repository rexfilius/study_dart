import 'dart:io';

Future<void> main() async {
  /// Error Handling - Using try-catch + async-await
  try {
    final file = File('assets/text_long.txt');
    final stream = file.openRead();
    await for (var data in stream) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('All finished');
  }
}