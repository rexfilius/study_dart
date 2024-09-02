import 'dart:math';

/// Methods are functions that provide behavior for an object.
///
/// Instance methods on objects can access instance variables and 'this'.
class PointLess {
  double x = 0;
  double y = 0;

  PointLess(this.x, this.y);

  double distanceTo(PointLess other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

/// OPERATOR::
/// Operators are instance methods with special names.
/// Dart allows you to define operators with the following names:
///  <  +   |   >>>   >   /   ^   []
///  <=    ~/    &   []=  >=   *   <<
///  ~   –   %   >>    ==
///
/// An operator declaration is identified using the built-in identifier operator.
/// The code below defines vector addition (+) and subtraction (-):
class Vec {
  final int x, y;

  Vec(this.x, this.y);

  Vec operator +(Vec v) => Vec(x + v.x, y + v.y);

  Vec operator -(Vec v) => Vec(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) {
    return other is Vec && x == other.x && y == other.y;
  }

  @override
  int get hashCode => Object.hash(x, y);
}

void main() {
  final v = Vec(2, 3);
  final w = Vec(2, 2);

  print(v + w == Vec(4, 5)); // true
  print(v - w == Vec(0, 1)); // true
}
