/// DART LOGICAL OPERATORS::
/// You can invert or combine boolean expressions using the logical operators.
///
///  !expr   inverts an expression (changes false to true, and vice versa)
///  ||   logical OR
///  &&   logical AND
void main() {
  var firstNumber = 30.3 / 4;
  var secondNumber = 20.5 / 4;

  if (firstNumber < 10 && secondNumber > 5) {
    print("$firstNumber is <10 and $secondNumber is >5");
  } else if (firstNumber < 10 || secondNumber > 5) {
    print("$firstNumber is <10 or $secondNumber is >5");
  }
}
