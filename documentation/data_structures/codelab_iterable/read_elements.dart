void main() {
  // You can read the elements of an iterable sequentially, using a for-in loop.
  const foodList = ['Salad', 'Eggs', 'Popcorn', 'Teas', 'Rice'];
  for (final food in foodList) {
    print(food);
  }

  // Accessing only the first or the last element of an Iterable.
  // Because accessing the last element of an Iterable requires stepping
  // through all the other elements, last can be slow. Using first or last on
  // an empty Iterable results in a StateError.
  print("First food item is ${foodList.first}");
  print("Last food item is ${foodList.last}");
  print('');

  // Use firstWhere() to find the first element that satisfies certain
  // conditions. This method requires you to pass a predicate, which is a
  // function that returns true if the input satisfies a certain condition.
  var fourCharacterFood = foodList.firstWhere((element) => element.length==4);
  print(fourCharacterFood);

}