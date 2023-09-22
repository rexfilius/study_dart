/// FUTURES
/// Dart has a type called Future, which is basically a promise to
/// give you the value you really want later.
///
/// Before a future completes, there isn't really anything you can do with it,
/// but after it completes it will have two possible results: the value you
/// were asking for, or an error.
/// This all works out to three different states for a future:
/// 1. Uncompleted
/// 2. Completed with a value
/// 3. Completed with an error
///
/// There are two ways to get at the value after a future completes. One is
/// with callbacks and the other is using the async-await syntax.
///
/// A callback is an anonymous function that will run after some event has
/// completed. In the case of a future, there are three
/// callback opportunities: then, catchError and whenComplete
void main() {
  final myFuture = Future<String>.delayed(
    Duration(seconds: 1),
    () => 'Future',
  );
  print(myFuture);
  print('');

  print('Before the future');
  final myFuture2 = Future<String>.delayed(
    Duration(seconds: 1),
    () => 'Future, with callbacks',
  )
      .then((value) => print('Value: $value'))
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Future is complete'));
  print('After the future');
}
