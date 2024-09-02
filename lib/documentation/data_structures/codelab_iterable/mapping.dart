void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Mapping Iterables with the method map() enables you to apply a function
  // over each of the elements, replacing each element with a new one.
  // Note: map() returns a lazy Iterable, meaning that the supplied function is called only when the elements are iterated
  Iterable<int> output = numbers.map((number) => number * 10);
  print(output);

  // You can also use map() to transform an element into a different object
  var numToString = numbers.map((number) => number.toString());
  print(numToString);
}
