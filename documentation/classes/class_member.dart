/// Objects have members consisting of functions(methods)
/// and data(instance variables). When you call a method, you invoke it on
/// an object: the method has access to that object's functions and data.
///
/// Use a dot (.) to refer to an instance variable or method.
/// Use ?. instead of . to avoid an exception when the leftmost operand is null.
void main() {
  var street1 = Street();
  street1.name = "Allen";
  street1.number = 42;
  street1.printStreetName();

  Street? street2;
  street2?.printStreetName();
}

class Street {
  String name = "";
  int number = 0;

  void printStreetName() {
    print("Address at $number $name Street");
  }
}
