/// Dart generic types are reified, which means that they carry their type
/// information around at runtime. e.g. you can test the type of a collection.
void main() {
  var coworkers = <Pattern>[]; // String extends Pattern
  coworkers.addAll(['Seth', 'Kathy', 'Lars']);
  print(coworkers is List<String>); // false

  // Generics with a 'type that extends a class'
  var someBaseClass = Eraser<SomeBaseClass>();
  var extender = Eraser<Extender>();

  // It's also OK to specify no generic argument.
  var eraser = Eraser();
  print(eraser); // Instance of 'Eraser<SomeBaseClass>'
}

// When implementing a generic type, you might want to limit the types that
// can be provided as arguments, so that the argument must be a subtype of a
// particular type. You can do this using 'extends'.
//
// A common use case is ensuring that a type is non-nullable by making it a
// subtype of Object (instead of the default, Object?).
// You can use extends with other types besides Object.
class Pen<T extends Object> {
  // Any type provided to Pen for T must be non-nullable.
}

class Eraser<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Eraser<$T>'";
}

class Extender extends SomeBaseClass {}

class SomeBaseClass {}
