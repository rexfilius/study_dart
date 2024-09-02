/// DART EQUALITY and RELATIONAL OPERATORS::
///
/// ==   Equal
/// != 	Not equal
/// >  	Greater than
/// <  	Less than
/// >= 	Greater than or equal to
/// <= 	Less than or equal to

/// To test whether two objects x and y represent the SAME THING,
/// use the == operator.
/// (In the rare case where you need to know whether two objects are the
/// exact SAME OBJECT, use the identical() function instead.)
///
/// Here's how the == operator works:
/// (1) If x or y is null, return true if both are null,
/// and false if only one is null.
/// (2) Return the result of invoking the == method on x with the argument y.
/// (That's right, operators such as == are methods that are invoked on their
/// first operand.
void main() {
  var map1 = {};
  var map2 = map1;

  print("Is 2==2, ${2 == 2}");
  print("Is Chop == chop, ${"Chop" == "chop"}");
  print("Is map1 same as map2, ${identical(map1, map2)}");
}
