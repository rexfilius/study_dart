/// If you never intend to change a variable, use final or const, either
/// instead of var or in addition to a type. A final variable can be set
/// only once; a const variable is a compile-time constant.
/// (Const variables are implicitly final.)
/// NOTE: Instance variables can be final but not const.

/// Creating and setting a final variable. You can't change the value
/// of a final variable
final name = "Nicky";
final String nickName = "Minaj";

/// Use 'const' for variables that you want to be compile-time constants.
/// If the 'const' variable is at the class level, mark it 'static const'.
/// Where you declare the variable, set the value to a compile-time constant
/// such as a number or string literal, a const variable,
/// or the result of an arithmetic operation on constant numbers
const bar = 1000000;
const double atm = 1.01325 * bar;

class Check {
  static const value = 34;
}

/// The const keyword isn't just for declaring constant variables. You can also
/// use it to create constant values, as well as to declare constructors that
/// create constant values. Any variable can have a constant value.
var food = const [];
final bars = const [];
const jazz = []; // Equivalent to 'const []'

/// You can omit const from the initializing expression of a const declaration.
/// DON’T use const redundantly
/// const nameList = const []; // redundant
const studentList = []; // good

void main() {
  /// You can change the value of a non-final, non-const variable,
  /// even if it used to have a const value
  var friends = const [];
  friends = ["John", "Kate", "Joe"];
  print(friends);

  /// You can't change the value of a const variable:
  const churchList = [];

  /// churchList.add("Anglican");  // ERROR!!
  /// churchList = [''];  // Error!!
  print(churchList);

  /// You can define constants that use type checks and casts (is and as),
  /// collection if, and spread operators ('...' and '...?')
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.

  /// NOTE - Although a final object cannot be modified, its fields can be
  /// changed. In comparison, a const object and its fields cannot be changed:
  /// they are immutable.
  final colors = ['Red', 'Blue']; // List is an object
  colors.add('Indigo');
  print(colors);
}
