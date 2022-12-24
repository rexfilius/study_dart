class Pointy {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.

  /// [1] All uninitialized instance variables have the value null.
  /// [2] All instance variables generate an implicit getter method.
  /// Non-final instance variables and late final instance variables
  /// without initializers also generate an implicit setter method.

  /// Instance variables can be final, in which case they must be set exactly
  /// once. Initialize final, non-late instance variables at declaration, using
  /// a constructor parameter, or using a constructor’s initializer list.
  final String? title;
  final DateTime pointCreationTime = DateTime.now();
  String? pointName;

  Pointy({this.title});

  Pointy.unnamed() : title = "a pointy title";

  /// If you need to assign the value of a final instance variable after the
  /// constructor body starts, you can use one of the following
  /// [1] Use a factory constructor.
  /// [2] Use late final, but be careful: a late final without an initializer
  /// adds a setter to the API.
}

void main() {
  /// If you initialize a non-late instance variable where it's declared,
  /// the value is set when the instance is created, which is before the
  /// constructor and its initializer list execute.
  var point = Pointy();
  point.x = 4; // Use the setter method for x.
  print(point.x == 4); // true. Use the getter method for x.
  print(point.y == null); //true. Values default to null.
}
