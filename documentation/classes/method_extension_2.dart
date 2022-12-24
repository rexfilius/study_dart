/// Use the following syntax to create an extension:
/// extension <extension name> on <type> {
///     (<member definition>)*
/// }
///
/// To create a local extension that's visible only in the library where it's
/// declared, either omit the extension name or give it a name that starts with
/// an underscore (_).
/// The members of the extension can be methods, getters, setters, operators.
/// Extensions can also have static fields and static helper methods.
///
/// Extensions can have generic type parameters. e.g. here's some cod that
/// extends the built-in List<T> type with a getter, an operator, and a method
extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;

  List<T> operator -() => reversed.toList();

  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}
