/**
 * An async function runs synchronously until the first await keyword. This means
 * that within an async function body, all synchronous code before the first await
 * keyword executes immediately.
 */
Future<void> printOrderMessage4() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder4();
  print('Your order is: $order');
}

Future<String> fetchUserOrder4() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

Future<void> main() async {
  countSeconds(4);
  await printOrderMessage4();
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
