/// Every class implicitly defines an interface containing all the instance
/// members of the class and of any interfaces it implements. If you want to
/// create a class A that supports class B's API without inheriting B's
/// implementation, class A should implement the B interface.
///
/// A class implements one or more interfaces by declaring them in an
/// implements clause and then providing the APIs required by the interfaces.

// The implicit interface contains greet().
class Fraudster {
  final String _name; // In the interface, but visible only in this library.

  Fraudster(this._name); // Not in the interface, since this is a constructor.

  // In the interface.
  String greet(String person) => 'Hello, $person. I am $_name.';
}

// An implementation of the Fraudster interface.
class YahooBoy implements Fraudster {
  @override
  String get _name => '';

  @override
  String greet(String person) => 'Hi $person. Do you know who I am?';
}

String greetBob(Fraudster fraudster) => fraudster.greet('Bob');

void main() {
  print(greetBob(Fraudster('Kathy')));
  print(greetBob(YahooBoy()));
}
