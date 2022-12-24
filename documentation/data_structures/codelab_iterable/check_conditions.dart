void main() {
  /// When working with Iterable, sometimes you need to verify that all the
  /// elements of a collection satisfy some condition.
  /// Do not be tempted to write a solution using a for-in loop.
  /// The Iterable class provides two methods you can use to verify conditions:
  /// any(): Returns true if at least one element satisfies the condition.
  /// every(): Returns true if all elements satisfy the condition.
  const items = ['Salad', 'Popcorn', 'Toast'];

  if (items.any((element) => element.contains('Z'))) {
    print("At least one item contains 'Z'");
  } else {
    print("No items contains 'Z'");
  }

  if (items.every((element) => element.length >= 5)) {
    print("All items have length >= 5");
  }
}
