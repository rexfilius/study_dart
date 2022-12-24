/// Functions let you package multiple related lines of code into a single
/// body. You then summon the function to avoid repeating those lines of code
/// throughout your Dart app.
/// A function consists of the following elements: Return type, Function name,
/// Parameter list in parentheses, Function body enclosed in brackets.
String compliment(int number) {
  return "$number is a very nice number";
}

/// The code you're turning into a function goes inside the curly brackets.
/// When you call the function, you pass in arguments that match the types
/// of the parameters of the function.
/// If a function doesn't need to return a value,
/// you can set the return type to void
bool isBanana(String fruit) {
  return fruit == 'banana';
}

/// Optional Parameters.
/// If a parameter to a function is optional, you can surround it with square
/// brackets and make the type nullable.
String fullName(String first, String last, [String? title]) {
  if (title == null) {
    return '$first $last';
  } else {
    return '$title $first $last';
  }
}

/// Named Parameters & Default Values.
/// When you have multiple parameters, it can be confusing to remember which is
/// which. Dart solves this problem with named parameters, which you get by
/// surrounding the parameter list with curly brackets: { }. These parameters
/// are optional by default, but you can give them default values or make them
/// required by using the required keyword
bool withinTolerance({required int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

void main() {
  var fruit = 'apple';
  print(isBanana(fruit)); // false
  print('');

  print(fullName('Joe', 'Howard')); // Joe Howard
  print(fullName('Albert', 'Einstein', 'Professor'));
  // Professor Albert Einstein
  print('');

  print(withinTolerance(min: 1, max: 5, value: 11)); // false
  print(withinTolerance(value: 5)); // true
}
