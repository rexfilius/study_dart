/// LIBRARY TOUR
/// Implementing Map Keys
/// Each object in Dart automatically provides an integer hash code, and thus
/// can be used as a key in a map. However, you can override the hashCode
/// getter to generate a custom hash code. If you do, you might also want to
/// override the == operator. Objects that are equal (via ==) must have
/// identical hash codes. A hash code doesn't have to be unique, but it should
/// be well distributed.
///
/// Tip: To consistently and easily implement the hashCode getter, consider
/// using the static hashing methods provided by the Object class. To generate
/// a single hash code for multiple properties of an object, you can use
/// Object.hash(). To generate a hash code for a collection, you can use either
/// Object.hashAll() (if element order matters) or Object.hashAllUnordered()
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // Override hashCode using the static hashing methods
  // provided by the 'Object' class.
  @override
  int get hashCode => Object.hash(firstName, lastName);

  // You should generally implement operator `==` if you
  // override `hashCode`.
  @override
  bool operator ==(dynamic other) {
    return other is Person &&
    other.firstName == firstName &&
    other.lastName == lastName;
  }
}

void main() {
  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  assert(p1.hashCode == p2.hashCode);
  assert(p1 == p2);
  assert(p1 != p3);
}
