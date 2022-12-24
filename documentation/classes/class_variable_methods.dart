import 'dart:math';

/// Use the static keyword to implement class-wide variables and methods.
/// Static variables (class variables) are useful for class-wide state
/// and constants. Static variables aren't initialized until they're used.
class Bags {
  static const initialCapacity = 16;
}

/// Static methods(class methods) don't operate on an instance, and thus don't
/// have access to 'this'. They do, however, have access to static variables.
/// You invoke static methods directly on a class.
class CheckPoint {
  double x, y;

  CheckPoint(this.x, this.y);

  static double distanceBetween(CheckPoint a, CheckPoint b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

/// NOTE: Consider using top-level functions, instead of static methods,
/// for common or widely used utilities and functionality.
///
/// You can use static methods as compile-time constants. e.g. you can pass
/// a static method as a parameter to a constant constructor.
void main() {
  print(Bags.initialCapacity == 16); // true

  // Static Methods
  var a = CheckPoint(2, 2);
  var b = CheckPoint(4, 4);
  var distance = CheckPoint.distanceBetween(a, b);
  print(2.8 < distance && distance < 2.9); // true
  print(distance);

  // Singleton class -> two ways of defining them
  final jobSingleton = JobSingleton.instance;
  final jobSingleton2 = JobSingleton();
}

/// You can use 'static' to define singletons
class JobSingleton {
  JobSingleton._();

  static final JobSingleton instance = JobSingleton._();

  factory JobSingleton() => instance;
}
