void main() {
  /// Creating a variable and initializing it. Variables store references.
  /// The variable called firstName contains a reference to a String object
  /// with a value of 'Bob'.
  var firstName = "Bob";

  /// If an object isn't restricted to a single type, specify the Object type
  /// (or dynamic if necessary).
  Object secondName = "John";
  dynamic someName = "Javier";

  /// Explicitly declaring the type that would be inferred
  String thirdName = "Anita";

  print("$firstName $secondName $someName $thirdName");

  /// Uninitialized variables that have a nullable type have an initial value
  /// of null. Even variables with numeric types are initially null,
  /// because numbers - like everything else in Dart - are objects.
  int? idNumber;
  print(idNumber); // null

  /// Non-nullable variable must be assigned before it can be used
  int streetNumber = 40;
  print(streetNumber);

  /// You don't have to initialize a local variable where it's declared, but
  /// you do need to assign it a value before it's used.
  int lineCount;
  var weLikeToCount = true;
  if (weLikeToCount) {
    lineCount = countLines();
  }
  print(lineCount);

  /// NOTE: Top-level and class variables are lazily initialized; the
  /// initialization code runs the first time the variable is used.
}

int countLines() {
  return 34;
}
