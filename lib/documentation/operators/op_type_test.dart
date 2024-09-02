/// DART TYPE TEST OPERATORS::
/// The as, is, and is! operators are handy for checking types at runtime.
///
///  as   Typecast (also used to specify library prefixes)
///  is 	True if the object has the specified type
///  is!	True if the object does not have the specified type
void main() {
  var employee = Humanoid();
  (employee as Person).firstName = 'Bob';

  if (employee is Person) {
    employee.firstName = 'Bob'; // Type check
  }

  /// NOTE:: The code above isn't equivalent. If employee is null or not a
  /// Person, the first example throws an exception; the second does nothing.
}

class Humanoid {
  var firstName = "";
  var lastName = "";
}

class Person extends Humanoid {}
