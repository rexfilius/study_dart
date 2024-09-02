/// Dart supports if statements with optional else statements.
/// Unlike JavaScript, conditions must use boolean values, nothing else
void main() {
  var boxNumber = 45 ~/ 5;

  if (boxNumber < 10) {
    print("$boxNumber is <10");
  } else {
    print("$boxNumber is >10");
  }
}
