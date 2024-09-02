void main() {
  /// When you want a list of paired values, Map is a good choice. Dart Maps
  /// are similar to dictionaries in Swift and maps in Kotlin.
  Map<String, int> calories = {
    'cake': 500,
    'donuts': 150,
    'cookies': 100,
  };

  /// Elements of a map are called key-value pairs, where the key is on the
  /// left of a colon and the value is on the right.
  /// You find a value by using the key to look it up
  final donutCalories = calories['donuts'];
  print(donutCalories); // 150

  /// Add a new element to a map by specifying the key and assigning it a value
  calories['brownieFudgeSundae'] = 1346;
  print(calories);
  // {cake: 500, donuts: 150, cookies: 100, brownieFudgeSundae: 1346}
}
