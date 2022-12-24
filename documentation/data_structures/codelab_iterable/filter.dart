void main() {
  // If you want to find all the elements that satisfy a certain condition?
  // You can accomplish that using the where() method.
  // The output of where() is another Iterable, and you can use it as such to
  // iterate over it or apply other Iterable methods
  // NOTE: If no element satisfies the predicate in where(), then the method
  // returns an empty Iterable. Unlike singleWhere() or firstWhere(),
  // where() doesn't throw a StateError exception.
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var evenNumbers = numbers.where((element) => element.isEven);
  print(evenNumbers);
  print('');

  // The methods takeWhile() and skipWhile() can also help you filter elements
  // from an Iterable.
  // takeWhile() returns an Iterable that contains all the elements before the
  // one that satisfies the predicate.
  // skipWhile() returns an Iterable that contains all elements after and
  // including the first one that doesn't satisfy the predicate.
  const digits = [1, 3, -2, 0, 4, 5];
  var numbersUntilZero = digits.takeWhile((value) => value != 0);
  print("Numbers until zero: $numbersUntilZero");
  var numbersStartingAtZero = digits.skipWhile((value) => value != 0);
  print("Numbers starting at zero: $numbersStartingAtZero");
}
