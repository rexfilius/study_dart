/// Compound assignment operators combine an operation with an assignment.
/// *=   %=   >>>=   ^=   +=   /=   <<=
/// &=   |=   -=   ~/=   >>=

/// You can assign values using the = operator. To assign only if the
/// assigned-to variable is null, use the ??= operator.
void main() {
  var value = "Value";

  // Assign value to a
  String a = value;

  // Assign value to b if b is null; otherwise, b stays the same
  String? b;
  b ??= value;

  print("a = $a, b = $b");
}