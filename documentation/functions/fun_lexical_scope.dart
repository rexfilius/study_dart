/// Dart is a lexically scoped language, which means that the scope of
/// variables is determined statically, simply by the layout of the code.
/// You can "follow the curly braces outwards" to see if a variable is in scope.
String topLevel = "topLevel";

void main() {
  var insideMain = "insideMain";

  void myFunction() {
    var insideFunction = "insideFunction";

    /// nestedFunction() can use variables from every level,
    /// all the way up to the top level.
    void nestedFunction() {
      var insideNestedFunction = "insideNestedFunction";

      print(topLevel);
      print(insideMain);
      print(insideFunction);
      print(insideNestedFunction);
    }
    nestedFunction();
  }
  myFunction();
}
