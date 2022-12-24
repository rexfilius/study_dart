/// Most functions are named. You can also create a nameless function called an
/// ANONYMOUS FUNCTION/LAMBDA/CLOSURE. You might assign an anonymous function
/// to a variable so that, for example, you can add/remove it from a collection.
///
/// An anonymous function looks similar to a named function - zero or more
/// parameters, separated by commas and optional type annotations,
/// between parentheses.
void main() {
  /// The code below defines an anonymous function with an untyped parameter,
  /// element. The function, invoked for each item in the list, prints a string
  /// that includes the value at the specified index.
  const fruits = ['apples', 'bananas', 'oranges'];
  fruits.forEach((element) {
    print("${fruits.indexOf(element)}: $element");
  });
  print("");

  /// If the function contains only a single expression or return statement,
  /// you can shorten it using arrow notation.
  const fruits2 = ['apples', 'bananas', 'oranges'];
  fruits2.forEach((element) => print("${fruits.indexOf(element)}: $element"));
}
