/// Extension methods are a way to add functionality to existing libraries.
/// You might use extension methods without even knowing it.
/// e.g. when you use code completion in an IDE, it suggests extension methods
/// alongside regular methods.
///
/// Extensions can define not just methods, but also other members such as
/// getter, setters, and operators. Also, extensions have names, which can be
/// helpful if an API conflict arises.
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {
  print('42'.parseInt());

  /// You can't invoke extension methods on variables of type 'dynamic'.
  /// The reason that dynamic doesn't work is that extension methods are
  /// resolved against the static type of the receiver. Because extension
  /// methods are resolved statically, they're as fast as calling a static function.
  dynamic d = '2';
  // print(d.parseInt()); // Runtime exception: NoSuchMethodError

  /// Extension methods do work with Dart’s type inference.
  var v = '2';
  print(v.parseInt()); // Output: 2
}
