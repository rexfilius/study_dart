void main() {
  /// A set in Dart is an unordered collection of unique items. Dart support
  /// for sets is provided by set literals and the Set type.
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  Set<String> metals = {"Iron", "Gold", "Platinum"};
  print("Halogens: $halogens");
  print("Metals: $metals\n");

  /// To create an empty set, use {} preceded by a type argument, or assign {}
  /// to a variable of type Set
  /// NOTE: The syntax for map literals is similar to that for set literals.
  /// Because map literals came first, {} defaults to the Map type. If you
  /// forget the type annotation on {} or the variable it's assigned to, then
  /// Dart creates an object of type Map<dynamic, dynamic>.
  var emptySet = <String>{};
  Set<String> emptySet2 = {};
  var emptyMapNotASet = {}; // Creates a map, not a set
  print("$emptySet $emptySet2 $emptyMapNotASet\n");

  /// Add items to an existing set using the add() or addAll() methods.
  /// Use .length to get the number of items in the set
  metals.add("Tungsten");
  print("Metals: $metals");

  var elements = {"Titanium", "Copper"};
  metals.addAll(elements);
  print("Metals $metals");
  print("number of items in $metals is ${metals.length} \n");

  /// To create a set that's a compile-time constant, add const before the set
  /// literal. You can't add/remove items to a set with const value.
  /// ALSO: Sets support spread operators(... & ...?), "collection if and for",
  /// just like lists do
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  };
  print(constantSet);
}
