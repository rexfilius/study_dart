import 'dart:io';
import 'dart:convert';

/// Transforming a Stream::
Future<void> main() async {
  final file = File('assets/text.txt');
  final stream = file.openRead();

  await for (var data  in stream.transform(utf8.decoder)) {
    print(data);
  }
}
