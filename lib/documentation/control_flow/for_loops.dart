void main() {
  /// You can iterate with the standard for loop
  var message = 'Dart is fun';
  for (var i = 0; i < 5; i++) {
    print(message[i]);
  }
  print("");

  /// If the object that you are iterating over is an Iterable
  /// (such as List or Set) and if you don't need to know the current
  /// iteration counter, you can use the for-in form of iteration:
  var candidates = ["Peter", "John", "Michael", "Mark"];
  for (var candidate in candidates) {
    print(candidate);
  }
  print("");

  /// Iterable classes also have a forEach() method as another option.
  var fruits = ["Apple", "Orange", "Pawpaw", "Mango"];
  fruits.forEach((element) => print(element));
  // fruits.forEach((element) {print(element);}); // same as above
}
