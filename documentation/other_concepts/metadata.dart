import 'Metadata.dart';

/// Use metadata to give additional information about your code.
/// A metadata annotation begins with the character '@', followed by either
/// a reference to a compile-time constant (such as deprecated)
/// or a call to a constant constructor.
///
/// Three annotations are available to all Dart code:
/// @Deprecated, @deprecated, @override.
class TV {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() => turnOn();

  /// Turns the TV's power on.
  void turnOn() => print("Turning on the TV");
}

void main() {
  var tv = TV();
  tv.activate();
}

/// You can define your own metadata annotations.
/// Metadata can appear before a library, class, typedef, type parameter,
/// constructor, factory, function, field, parameter, or variable declaration
/// and before an import or export directive.
/// You can retrieve metadata at runtime using reflection.
class ToBe {
  final String who;
  final String what;

  const ToBe(this.who, this.what);
}

@ToBe("who", "what")
void beSomething() {
  print('be something');
}
