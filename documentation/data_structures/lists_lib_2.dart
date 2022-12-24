/// LIBRARY TOUR
void main() {
  /// Use indexOf() to find the index of an object in a list
  var fruits = ['apples', 'oranges'];
  assert(fruits[0] == 'apples'); // Access a list item by index.
  assert(fruits.indexOf('apples') == 0); // Find an item in a list.

  /// Sort a list using the sort() method. You can provide a sorting function
  /// that compares two objects. This sorting function must return "< 0" for
  /// smaller, 0 for the same, and "> 0" for bigger. The following example uses
  /// compareTo(), which is defined by Comparable and implemented by String.
  var fruitList = ['bananas', 'apples', 'oranges'];
  // Sort a list.
  fruitList.sort((a, b) => a.compareTo(b));
  assert(fruitList[0] == 'apples');

  /// Lists are parameterized types (generics),
  /// so you can specify the type that a list should contain
  // This list should contain only strings.
  var fruity = <String>[];
  fruity.add('apples');
  var fruit = fruity[0];
  assert(fruit is String);
}
