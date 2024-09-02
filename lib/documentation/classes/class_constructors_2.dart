/// Declare a constructor by creating a function with the same name as its
/// class. The most common form of constructor, the generative constructor,
/// creates a new instance of a class.
class Truck {
  String truckName = "";
  int truckNumber = 0;
  String truckMaker = "";
  double truckTons = 0.0;

  /// Use 'this' only when there is a name conflict.
  /// Otherwise, Dart style omits it.
  /// Truck(this.truckName, this.truckNumber); - same style as below
  Truck(String name, int number) {
    this.truckName = name;
    this.truckNumber = number;
  }
}

/// The pattern of assigning a constructor argument to an instance variable
/// is so common, Dart has initializing formal parameters to make it easy.
/// Initializing parameters can also be used to initialize non-nullable or
/// final instance variables, which both must be initialized or provided
/// a default value.
class Trucks {
  final double name;
  final double number;

  // Sets the 'name' and 'number' instance variables
  // before the constructor body runs.
  Trucks(this.name, this.number);
}

/// If you don't declare a constructor, a default constructor is provided for
/// you. The default constructor has no arguments and invokes the no-argument
/// constructor in the superclass.
///
/// Subclasses don't inherit constructors from their superclass.
/// A subclass that declares no constructors has only the default constructor.

/// Use a named constructor to implement multiple constructors for a class or
/// to provide extra clarity.
class Lines {
  double x = 0;
  double y = 0;

  Lines(this.x, this.y);

  // Named constructor
  Lines.origin()
      : x = xOrigin,
        y = yOrigin;
}

const double xOrigin = 0;
const double yOrigin = 0;

/// REMEMBER: Constructors are not inherited, which means that a superclass'
/// named constructor is not inherited by a subclass. If you want a subclass
/// to be created with a named constructor defined in the superclass,
/// you must implement that constructor in the subclass.