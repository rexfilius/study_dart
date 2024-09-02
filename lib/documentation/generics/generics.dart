/// Generics are often required for type safety, but they have more benefits
/// than just allowing your code to run:
/// - Properly specifying generic types results in better generated code.
/// - You can use generics to reduce code duplication.
///
/// If you intend for a list to contain only strings, you can declare it as
/// List<String> That way you, your fellow programmers, and your tools can
/// detect that assigning a non-string to the list is probably a mistake.
///
/// List, set, and map literals can be parameterized.
/// For parameterized literals you add <type> (for lists and sets)
/// or <keyType, valueType> (for maps) before the opening bracket.
void main() {
  // Parameterized list, set and map.
  var listOfNames = <String>['Seth', 'Kathy', 'Lars', 'Seth'];
  var setOfNames = <String>{'Seth', 'Kathy', 'Lars'};
  var mapOfPages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };
  print(listOfNames);
  print(setOfNames);
  print(mapOfPages);
  print('');

  /// To specify one or more types when using a constructor, put the types
  /// in angle brackets just after the class name
  var nameSet = Set<String>.from(listOfNames);
  var views = Map<int, String>();
  print(nameSet);
  print(views);
}
