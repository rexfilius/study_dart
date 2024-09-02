/// Use the abstract modifier to define an abstract class - a class that can't
/// be instantiated. Abstract classes are useful for defining interfaces, often
/// with some implementation. If you want your abstract class to appear to be
/// instantiable, define a factory constructor.
/// Abstract classes often have abstract methods.
abstract class AbstractContainer {
  void updateChildren(); // Abstract method.
}
