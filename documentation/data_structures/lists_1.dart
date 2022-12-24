void main() {
  /// In Dart, arrays are List objects, so most people just call them lists.
  /// Dart list literals look like JavaScript array literals
  var digits = [1, 2, 5, 7, 8, 9];
  List<String> names = ["Joe", "Bob", "Mike", "Jon"];
  print(names);

  /// You can add a comma after the last item in a Dart collection literal.
  /// This trailing comma doesn't affect the collection, but it can help
  /// prevent copy-paste errors.
  var list = [
    'Car',
    'Boat',
    'Plane',
  ];
  print(list);

  /// Lists use zero-based indexing, where 0 is the index of the first value
  /// and "list.length - 1" is the index of the last value
  print("\nvalue at first index of $digits is ${digits[0]}");
  print("value at last index of $digits is  ${digits[digits.length - 1]}");
  print("the length of $digits is ${digits.length}");
  print("");

  /// To create a list that is a compile-time constant, add const before the
  /// list literal. You can't add/remove items to a list with const value
  List<String> cars = const ["BMW", "Audi", "Toyota", "Lexus"];
  print("Cars - $cars");
}
