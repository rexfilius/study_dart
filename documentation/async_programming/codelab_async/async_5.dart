/**
 * Within an async function, you can write try-catch clauses the same way you would
 * in synchronous code.
 */
Future<void> printOrderMessage5() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrder5();
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrder5() {
  // Imagine that this function is more complex.
  var str = Future.delayed(
      const Duration(seconds: 4), () => throw 'Cannot locate user order');
  return str;
}

Future<void> main() async {
  await printOrderMessage5();
}
