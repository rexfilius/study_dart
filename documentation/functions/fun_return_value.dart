/// All functions return a value. If no return value is specified, the statement
/// 'return null;' is implicitly appended to the function body.
functionReturnsNothing() {}

void main() {
  assert(functionReturnsNothing() == null);
}
