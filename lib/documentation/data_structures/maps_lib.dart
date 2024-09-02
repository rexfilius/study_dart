/// LIBRARY TOUR
/// A map, commonly known as a dictionary or hash, is an unordered collection
/// of key-value pairs. Maps associate a key to some value for easy retrieval.
/// Unlike in JavaScript, Dart objects are not maps. You can declare a map
/// using a terse literal syntax, or you can use a traditional constructor.
void main() {
  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Maps can be built from a constructor.
  var searchTerms = Map();

  // Maps are parameterized types; you can specify what
  // types the key and value should be.
  var nobleGases = Map<int, String>();

  /// You add, get, and set map items using the bracket syntax.
  /// Use remove() to remove a key and its value from a map.
  nobleGases = {54: 'xenon'};

  assert(nobleGases[54] == 'xenon'); // Retrieve a value with a key.
  assert(nobleGases.containsKey(54)); // Check whether a map contains a key.

  nobleGases.remove(54); // Remove a key and its value.
  assert(!nobleGases.containsKey(54));
}
