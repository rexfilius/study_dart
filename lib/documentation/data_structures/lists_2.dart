void main() {
  /// There's the spread operator(...) & the null-aware spread operator(...?),
  /// which provide a concise way to insert multiple values into a collection.
  /// e.g. you can use the spread operator to insert all the values of a list
  /// into another list. If the expression to the right of the spread operator
  /// might be null, you can avoid exceptions by using the null-aware form.
  var street1 = ["John", "MLK", "Hugh"];
  var street2 = ["Casey", ...street1];
  print(street2);

  List<String>? roads;
  var roads2 = ["Freeway", "Intersection", ...?roads];
  print("$roads2\n");

  /// Dart also offers collection if and collection for, which you can use to
  /// build collections using conditionals (if) and repetition (for).
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var numbers in listOfInts) '#$numbers'];
  print(listOfStrings);
}
