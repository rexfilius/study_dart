/// Getting the result with async-await
Future<void> main() async {
  print('Before the future');
  final value = await Future<int>.delayed(
    Duration(seconds: 1),
        () => 42,
  );
  print('Value: $value');
  print('After the future');
}