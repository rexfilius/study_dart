/// A Dart string (String object) holds a sequence of UTF-16 code units.
/// You can use either single or double quotes to create a string.
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

void main() {
  /// You can put the value of an expression inside a string by using
  /// ${expression}. If the expression is an identifier, you can skip the {}.
  /// To get the string corresponding to an object, Dart calls the object's
  /// toString() method.
  var stringInterpolate = "string interpolation";
  print("Dart has $stringInterpolate which is very handy.");
  print('Dart has $stringInterpolate, which is very handy.' ==
      'Dart has string interpolation, which is very handy.');
  print("that deserves all caps ${stringInterpolate.toUpperCase()}");
  print("");

  /// NOTE: The == operator tests whether two objects are equivalent. Two
  /// strings are equivalent if they contain the same sequence of code units.
  ///
  /// You can concatenate strings using adjacent string literals or the
  /// + operator.
  /// Another way to create a multi-line string: use a triple quote with either
  /// single or double quotation marks.
  var remark = "A random" + " remark"; // var word = "A random" " remark";
  print(remark);

  var multiLine1 = '''You can create
  multi-line strings like this one.''';

  var multiLine2 = """This is also a 
  multi-line string.""";

  print(multiLine1);
  print(multiLine2);
  print("");
}
