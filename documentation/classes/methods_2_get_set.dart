/// GETTERS & SETTERS::
/// Getters and setters are special methods that provide read and write access
/// to an object's properties. Recall that each instance variable has an
/// implicit getter, plus a setter if appropriate.
///
/// You can create additional properties by implementing getters and setters,
/// using the get and set keywords.
class Rect {
  double left, top, width, height;

  Rect({
    required this.left,
    required this.top,
    required this.width,
    required this.height,
  });

  // Define two calculated properties: right and bottom.
  double get right => left + width;

  set right(double value) => left = value - width;

  double get bottom => top + height;

  set bottom(double value) => top = value - height;
}

/// With getters and setters, you can start with instance variables, later
/// wrapping them with methods, all without changing client code.
///
/// Note: Operators such as increment(++) work in the expected way, whether
/// or not a getter is explicitly defined. To avoid any unexpected side
/// effects, the operator calls the getter exactly once, saving its value
/// in a temporary variable.

void main() {
  var rect = Rect(left: 3, top: 4, width: 20, height: 15);
  print(rect.left == 3); // true

  rect.right = 12;
  print(rect.left == -8); // true
  print('');
}
