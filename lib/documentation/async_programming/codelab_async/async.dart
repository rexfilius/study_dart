/// Asynchronous operations let your program complete work while waiting for another
/// operation to finish. Here are some common asynchronous operations:
/// -> Fetching data over a network.
/// -> Writing to a database.
/// -> Reading data from a file.
/// To perform asynchronous operations in Dart, you can use the Future class and
/// the 'async' and 'await' keywords.

// This example shows how *not* to write asynchronous Dart code.
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

/// Here's why the example fails to print the value that fetchUserOrder()
/// eventually produces:
/// -> fetchUserOrder() is an asynchronous function that, after a delay, provides
/// a string that describes the user's order: a “Large Latte”.
/// -> To get the user’s order, createOrderMessage() should call fetchUserOrder()
/// and wait for it to finish. Because createOrderMessage() does not wait for
/// fetchUserOrder() to finish, createOrderMessage() fails to get the string value
/// that fetchUserOrder() eventually provides.
/// -> Instead, createOrderMessage() gets a representation of pending work to be done:
/// an uncompleted future.
/// -> Because createOrderMessage() fails to get the value describing the user's order,
/// the example fails to print “Large Latte” to the console,
/// and instead prints “Your order is: Instance of ‘_Future<String>’”.

void main() {
  print(createOrderMessage());
}

/**
 * KEY TERMS::
 * synchronous operation: A synchronous operation blocks other operations from
 * executing until it completes.
 *
 * synchronous function: A synchronous function only performs synchronous operations.
 *
 * asynchronous operation: Once initiated, an asynchronous operation allows other
 * operations to execute before it completes.
 *
 * asynchronous function: An asynchronous function performs at least one asynchronous
 * operation and can also perform synchronous operations.
 */
