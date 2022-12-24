/// LIBRARY TOUR
/// List, Set, and Map share common functionality found in many collections.
/// Some of this common functionality is defined by the Iterable class,
/// which List and Set implement.
/// NOTE: Although Map doesn't implement Iterable, you can get Iterables
/// from it using the Map keys and values properties.
void main() {
  // Use isEmpty or isNotEmpty to check whether a list, set, or map has items
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  var sitTag = <int, String>{42: 'Jon', 13: 'Kay', 30: 'Ana'};
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);
  assert(sitTag.isNotEmpty);

  // To apply a function to each item in a list, set, or map,
  // you can use forEach()
  teas.forEach((tea) => print('I drink $tea'));

  // When you invoke forEach() on a map, your function must take two arguments
  // (the key and value):
  sitTag.forEach((key, value) => print("Sit $key is reserved for $value"));

  // Iterables provide the map() method, which gives you
  // all the results in a single object:
  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  // Note: The object returned by map() is an Iterable that's lazily evaluated:
  // your function isn't called until you ask for an item from the returned
  // object. To force your function to be called immediately on each item,
  // use map().toList() or map().toSet()
  var loudestTeas = teas.map((tea) => tea.toUpperCase()).toList();
  print(loudestTeas);

  // Use where() to find only the items that return true
  // from the provided function.
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
  // or teas.where(isDecaffeinated)

  // Use any() to check whether at least one item in the
  // collection satisfies a condition.
  assert(teas.any(isDecaffeinated));

  // Use every() to check whether all the items in a
  // collection satisfy a condition.
  assert(!teas.every(isDecaffeinated));
}

// Chamomile is not caffeinated.
bool isDecaffeinated(String teaName) => teaName == 'chamomile';
