enum ColorShades { red, green, blue, white, black, yellow, purple }

void main() {
  /// Access enumerated values like any other static variables
  final fave = ColorShades.black;
  if (fave == ColorShades.black) {
    print("Favorite color is black\n");
  }

  /// Each value in an enum has an index getter, which returns the zero-based
  /// position of the value in the enum declaration.
  print(ColorShades.red.index == 0); // true
  print(ColorShades.purple.index == 6); // true
  print("");

  /// To get a list of all of the values in the enum,
  /// use the enum's values constant
  List<ColorShades> colors = ColorShades.values;
  print("ColorShades: $colors");

  /// You can use enums in switch statements, and you'll get a warning if
  /// you don't handle all of the enum's values
  var aColor = ColorShades.blue;

  switch (aColor) {
    case ColorShades.red:
      print('Red as roses!');
      break;
    case ColorShades.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }

  /// If you need to access the name of an enumerated value,
  /// use the .name property:
  print("\n ${ColorShades.purple.name}");
}
