/// LIBRARY TOUR
void main() {
  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

  fruits.add('kiwis'); // Add to a list.
  fruits.addAll(['grapes', 'bananas']); // Add multiple items to a list.
  assert(fruits.length == 5); // Get the list length.

  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex); // Remove a single item.
  assert(fruits.length == 4);
  fruits.clear(); // Remove all elements from a list.

  // You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
}
