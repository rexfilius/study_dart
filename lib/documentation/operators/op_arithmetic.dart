/// DART ARITHMETIC OPERATORS::
///  +	  Add
///  –	  Subtract
///  -expr	  Unary minus, a.k.a negation (reverse the sign of the expression)
///  *    Multiply
///  /	  Divide
///  ~/   Divide, returning an integer result
///  %	  Get the remainder of an integer division (modulo)
///
/// PREFIX AND POSTFIX INCREMENT AND DECREMENT OPERATORS
///  ++var   var = var + 1 (expression value is var + 1)
///  var++	 var = var + 1 (expression value is var)
///  --var	 var = var – 1 (expression value is var – 1)
///  var--	 var = var – 1 (expression value is var)
void main() {
  print("2 + 3 = ${2 + 3}"); // == 5
  print("2 - 3 = ${2 - 3}"); // == -1
  print("2 * 3 = ${2 * 3}"); // == 6
  print("5 / 2 = ${5 / 2}"); //  == 2.5, Result is a double
  print("5 ~/ 2 = ${5 ~/ 2}"); // == 2,  Result is an int
  print("5 % 2 = ${5 % 2}"); //  == 1,  Remainder
  print("5/2 = ${5 ~/ 2} remainder ${5 % 2}\n");

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  print(a == b); // true, 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  print(a != b); // true, 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  print(a == b); // true, -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  print(a != b); // true, -1 != 0
}
