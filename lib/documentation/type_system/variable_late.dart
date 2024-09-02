/// 'late' modifier in Dart has two use cases:
/// [1] Declaring a non-nullable variable that is initialized
/// after its declaration.
/// [2] Lazily initializing a variable.
/// If you fail to initialize a late variable, a runtime error occurs
/// when the variable is used.
late String description;

/// When you mark a variable as late but initialize it at its declaration,
/// then the initializer runs the first time the variable is used. This lazy
/// initialization is handy in a couple of cases:
/// 1. The variable might not be needed, and initializing it is costly.
/// 2. You're initializing an instance variable, and its initializer needs
/// access to 'this'.
/// In the code below, if the temperature variable is never used, then the
/// expensive readThermometer() function is never called
late String temperature = readThermometer();

String readThermometer() {
  return "A very expensive operation";
}

void main() {
  description = "I am enough";
  print(description);
}
