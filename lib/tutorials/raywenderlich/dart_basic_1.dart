void main() {
  /// Variables hold the data that your program will work on.
  /// You can think of a variable as a box in your computer's memory that holds
  /// a value. Each box has a name, which is the name of the variable.
  /// To denote a variable with Dart, use the "var" keyword.
  var myAge = 35;
  print(myAge);

  /*
  * Dart is statically typed, meaning that each variable in Dart has a type
  * that must be known when you compile the code. The variable type cannot
  * change when you run the program. C, Java, Swift and Kotlin are also
  * statically typed. This contrasts with languages like Python and JavaScript,
  * which are dynamically typed. That means variables can hold different kinds
  * of data when you run the program. You don't need to know the type when you
  * compile the code.
  */
  var pi = 3.14; // this is a 'double' type

  /*
  * Dart uses the following basic types:
  * int: Integers
  * double: Floating-point numbers
  * bool: Booleans
  * String: Sequences of characters
  * dynamic: a Dart keyword denoting a special type
  * int and double both derive from a type named num
  *
  * The Dynamic Keyword::
  * If you use the dynamic keyword instead of var, you get what's effectively
  * a dynamically typed variable
  */
  dynamic numberOfKittens;
  numberOfKittens = "There are no kittens";
  print(numberOfKittens);
  numberOfKittens = 0;
  print(numberOfKittens);

  /// Booleans
  bool areThereKittens = false;
  print(areThereKittens); // false

}
