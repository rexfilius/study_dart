/// LIBRARY TOUR
/// Implement the Comparable interface to indicate that an object can be
/// compared to another object, usually for sorting. The compareTo() method
/// returns < 0 for smaller, 0 for the same, and > 0 for bigger.
class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

void main() {
  var short = const Line(1);
  var long = const Line(100);
  assert(short.compareTo(long) < 0);
}