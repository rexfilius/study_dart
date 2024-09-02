/// CASCADE NOTATION
/// Cascades (.. or ?..) allow you to make a sequence of operations on the same
/// object. In addition to function calls, you can also access fields on that
/// same object. This often saves you the step of creating a temporary variable
/// and allows you to write more fluid code.
void main() {
  var housePaint = HousePaint()
    ..color = 0x334466
    ..weight = 30.4
    ..mix("Water")
    ..stroke();
  print(housePaint);

  // A longer way to the code above
  var housePaint2 = HousePaint();
  housePaint2.color = 0x323232;
  housePaint2.weight = 20.5;
  housePaint2.mix("Oil");
  housePaint2.stroke();

  /// If the object that the cascade operates on can be null, then use a
  /// null-shorting cascade(?..) for the first operation. Starting with ?..
  /// guarantees that none of the cascade operations are attempted
  /// on that null object.
  var housePaint3 = createNullableHousePaint()
    ?..color = 0x232323
    ..weight = 20.8;

  /// You can also nest cascades. Be careful to construct your cascade on a
  /// function that returns an actual object. Strictly speaking, the
  /// "double dot" notation for cascades isn't an operator.
  /// It's just part of the Dart syntax.
}

class HousePaint {
  int color = 0xFFFFFF;
  double weight = 45.5;

  void stroke() => print("Stroke paint with a brush");

  void mix(String liquid) => print("Mixing paint with $liquid");

  @override
  String toString() => "HousePaint(color:$color, weight:$weight)";
}

HousePaint? createNullableHousePaint() {
  return HousePaint();
}
