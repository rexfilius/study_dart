void main() {
  /// In general, a map is an object that associates keys and values. Both keys
  /// and values can be any type of object. Each key occurs only once, but you
  /// can use the same value multiple times. Dart support for maps is provided
  /// by map literals and the Map type.
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  Map<int, String> periodicTableElements = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  /// You can create a map object using a Map constructor.
  /// Class instantiation - new keyword is optional in Dart
  /// var students = Map<int, String>();
  var students = <int, String>{};
  students[1] = "Joe";
  students[2] = "Bob";
  students[3] = "Jon";

  print("Gifts: $gifts");
  print("Elements: $periodicTableElements");
  print("Students: $students\n");

  /// Add a new key-value pair to an existing map using the
  /// subscript assignment operator '[]='
  students[4] = "Kate";
  print("Add new value to students: $students");

  /// Retrieve a value from a map using the subscript operator
  print("student with id 2 is ${students[2]}");

  /// If you look for a key that isn't in a map, you get a null in return.
  print("student with id 6 is ${students[6]}");

  /// Use ".length" to get the number of key-value pairs in the map:
  print("number of students in $students is ${students.length}\n");

  /// To create a map that's a compile-time constant, add const before the map
  /// literal. You can't add/remove items to a map with const value.
  /// ALSO: Maps support spread operators(... & ...?), "collection if and for",
  /// just like lists do.
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(constantMap);
}
