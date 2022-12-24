/// A collection is an object that represents a group of objects, which are
/// called elements. Iterables are a kind of collection. A collection can be
/// empty, or it can contain many elements. Depending on the purpose,
/// collections can have different structures and implementations.
/// These are some of the most common collection types:
/// List: Used to read elements by their indexes.
/// Set: Used to contain elements that can occur only once.
/// Map: Used to read elements using a key.
///
/// An Iterable is a collection of elements that can be accessed sequentially.
/// In Dart, an Iterable is an abstract class, meaning that you can't
/// instantiate it directly. However, you can create a new Iterable by
/// creating a new List or Set.
/// Both List and Set are Iterable, so they have the same methods and
/// properties as the Iterable class. A Map uses a different data structure
/// internally, depending on its implementation. For example, HashMap uses a
/// hash table in which the elements (also called values) are obtained using
/// a key. Elements of a Map can also be read as Iterable objects by using
/// the map's entries or values property.
void main() {
  // This is a List of int, which is also an Iterable of int
  Iterable<int> iterableInt = [1,2,3];
  print(iterableInt);

  /// The difference with a List is that with the Iterable, you can't guarantee
  /// that reading elements by index will be efficient. Iterable, as opposed
  /// to List, does not have the '[]' operator.
  /// You can instead read elements with 'elementAt()', which steps through the
  /// elements of the iterable until it reaches that position.
}