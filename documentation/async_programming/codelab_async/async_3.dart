/**
 * The async and await keywords provide a declarative way to define asynchronous
 * functions and use their results. Remember these two basic guidelines when using
 * async and await:
 * -> To define an async function, add async before the function body.
 * -> The await keyword works only in async functions.
 *
 * You can convert main() from a synchronous to asynchronous function,
 * just add the async keyword before the function body.
 *
 * If the function has a declared return type, then update the type to be Future<T>,
 * where T is the type of the value that the function returns. If the function doesn't
 * explicitly return a value, then the return type is Future<void>.
 */
Future<String> createOrderMessage3() async {
  var order = await fetchUserOrder3();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder3() =>
// Imagine that this function is more complex and slow
    Future.delayed(const Duration(seconds: 2), () => "Large Latte");

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage3());
}
