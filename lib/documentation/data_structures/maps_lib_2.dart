/// LIBRARY TOUR
void main() {
  // You can retrieve all the values or all the keys from a map
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Get all the keys as an unordered collection (an Iterable).
  var mapKeys = hawaiianBeaches.keys; // mapKeys: Iterable<String>
  assert(mapKeys.length == 3);
  assert(Set.from(mapKeys).contains('Oahu'));

  // Get all the values as an unordered collection (an Iterable of Lists).
  var mapValues = hawaiianBeaches.values;
  assert(mapValues.length == 3);
  assert(mapValues.any((v) => v.contains('Waikiki')));

  /// To check whether a map contains a key, use containsKey(). Because map
  /// values can be null, you cannot rely on simply getting the value for
  /// the key and checking for null to determine the existence of a key.
  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));

  /// Use the putIfAbsent() method when you want to assign a value to a key
  /// if and only if the key does not already exist in a map. You must provide
  /// a function that returns the value.
  var teamAssignments = <String, String>{};
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);
}

String pickToughestKid() => 'Voldemort';
