void main() {
  /// Lists in Dart are similar to arrays in other languages. You use them to
  /// maintain an ordered list of values. Lists are zero-based, so the first
  /// item in the list is at index 0
  List desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  final numbers = [42, -1, 299792458, 100];
  print("Desserts: $desserts");

  /// To access the elements of a list, use subscript notation by putting the
  /// index number between square brackets after the list variable name
  final firstDessert = desserts[0];
  print("Desserts, first element: $firstDessert"); // cookies

  /// Adding and Removing elements in a list
  desserts.add('cake');
  print("Desserts: $desserts"); // [cookies, cupcakes, donuts, pie, cake]
  desserts.remove('donuts');
  print("Desserts: $desserts"); // [cookies, cupcakes, pie, cake]
  print('');

  // for-in loop
  for (final dessert in desserts) {
    print('I love to eat $dessert.');
  }
}
