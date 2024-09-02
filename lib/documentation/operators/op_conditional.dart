/// DART CONDITIONAL EXPRESSION OPERATOR
/// Dart has two operators that let you concisely evaluate expressions
/// that might otherwise require if-else statements:
///
/// (1)
/// condition ? expr1 : expr2
/// If condition is true, evaluates expr1 (and returns its value);
/// otherwise, evaluates and returns the value of expr2.
///
/// (2)
/// expr1 ?? expr2
/// If expr1 is non-null, returns its value;
/// otherwise, evaluates and returns the value of expr2.
///
/// When you need to assign a value based on a boolean expression,
/// consider using ? and :
/// If the boolean expression tests for null, consider using ??.
void main() {
  var isLessThanSeven = (34.5 / 5) < 7;
  var number = isLessThanSeven ? 'less than Seven' : 'not less than Seven';
  print("number = $number\n");

  print(playerName(null));
  print(playerName("Josh"));
}

/// If name param is non-null return 'name' otherwise return "Guest
String playerName(String? name) => name ?? 'Name is null so name = Guest';

/// Slightly longer version uses ?: operator.
String playerName2(String? name) => name != null ? name : 'Guest';

/// Very long version uses if-else statement.
String playerName3(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}
