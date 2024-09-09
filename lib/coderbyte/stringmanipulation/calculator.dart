/*
 *             CODERBYTE CALCULATOR CHALLENGE                   *
 *                                                              *
 * Problem Statement                                            *
 * Have the function Calculator(str) take the str parameter     *
 * being passed and evaluate the mathematical expression within *
 * in. For example, if str were "2+(3-1)*3" the output should   *
 * be 8. Another example: if str were "(2-0)(6/2)" the output   *
 * should be 6. There can be parenthesis within the string so   *
 * you must evaluate it properly according to the rules of      *
 * arithmetic.                                                  *
 * The string will contain the operators: +, -, /, *, (, and ). *
 * If you have a string like this: #/#*# or #+#(#)/#, then      *
 * evaluate from left to right. So divide then multiply, and    *
 * for the second one multiply, divide, then add.               *
 * The evaluations will be such that there will not be any      *
 * decimal operations, so you do not need to account for        *
 * rounding and whatnot.                                        *
 *                                                              *
 * Examples                                                     *
 * Input 1: "6*(4/2)+3*1"                                       *
 * Output 1: 15                                                 *
 *                                                              *
 * Input 2: "6/3-1"                                             *
 * Output 2: 1
 */
void main() {
  print(calculate("2+(3-1)*3")); // Output: 8
  print(calculate("(2-0)*(6/2)")); // Output: 6
  print(calculate("6*(4/2)+3*1")); // Output: 15
  print(calculate("6/3-1")); // Output: 1
}

int calculate(String str) {
  if (str.isEmpty) return 0;

  List<int> values = [];
  List<String> operators = [];
  int len = str.length;

  for (int i = 0; i < len; i++) {
    String c = str[i];

    if (RegExp(r'\d').hasMatch(c)) {
      int val = 0;
      while (i < len && RegExp(r'\d').hasMatch(str[i])) {
        val = val * 10 + int.parse(str[i]);
        i++;
      }
      values.add(val);
      i--; // step back one index as the loop will increment it
    } else if (c == '(') {
      operators.add(c);
    } else if (c == ')') {
      while (operators.isNotEmpty && operators.last != '(') {
        values.add(applyOp(
            operators.removeLast(), values.removeLast(), values.removeLast()));
      }
      operators.removeLast(); // remove '('
    } else if (['+', '-', '*', '/'].contains(c)) {
      while (operators.isNotEmpty && hasPrecedence(c, operators.last)) {
        values.add(applyOp(
            operators.removeLast(), values.removeLast(), values.removeLast()));
      }
      operators.add(c);
    }
  }

  while (operators.isNotEmpty) {
    values.add(applyOp(
        operators.removeLast(), values.removeLast(), values.removeLast()));
  }

  return values.last;
}

bool hasPrecedence(String op1, String op2) {
  if (op2 == '(' || op2 == ')') {
    return false;
  }
  return (op1 != '*' && op1 != '/') || (op2 != '+' && op2 != '-');
}

int applyOp(String op, int b, int a) {
  switch (op) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      if (b == 0) {
        throw UnsupportedError("Cannot divide by zero");
      }
      return a ~/ b; // Use integer division
    default:
      return 0;
  }
}
