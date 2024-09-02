/// A function can have any number of required positional parameters.
/// These can be followed either by named parameters or
/// by optional positional parameters (but not both).
/// NOTE: Some APIs - notably Flutter widget constructors — use only named
/// parameters, even for parameters that are mandatory.
///
/// Named parameters are optional unless they're specifically marked as required.
/// If a parameter is optional but can't be null, provide a default value.
void houseAddress({int number = 0, String street = "MLK Road"}) {
  print("The house is at $street and number is $number");
}

void clubAddress({required String clubName, int? number}) {
  print("The club is $clubName and address is $number");
}

void schoolAddress({int? number, String? name}) {
  print("The school's name is $name, and the number is $number");
}

/// Mixing optional and regular parameters
void churchAddress(String name, {int? number, String? street}) {
  print("The church's name is $name, street is $street, number is $number");
}

/// Although named parameters are a kind of optional parameter, you can
/// annotate them with "required" to indicate that the parameter is mandatory —
/// that users must provide a value for the parameter
void printAName({String name = "Agent X", required int age}) {
  print("Hello $name, are you $age years old?");
}

void main() {
  /// When calling a function, you can specify named parameters
  /// using "paramName: value"
  /// Although it often makes sense to place positional arguments first,
  /// named arguments can be placed anywhere in the argument list.
  houseAddress();
  houseAddress(number: 42, street: "Johnson Street");
  print("");

  clubAddress(clubName: "Hermes Wings");
  clubAddress(clubName: "Zeus Juice", number: 39);
  print("");

  schoolAddress();
  schoolAddress(number: 60);
  schoolAddress(number: 50, name: "Corona");
  schoolAddress(name:"Bell View");
  print("");

  churchAddress("Red Baptist");
  churchAddress("Green Soul", number: 20, street: "Kings Way");
  print("");

  printAName(age: 10);
  printAName(age: 18, name: "Bob");
}
