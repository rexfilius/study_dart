/*
 *             CODERBYTE DASH INSERT CHALLENGE                  *
 *                                                              *
 * Problem Statement                                            *
 * Have the function DashInsert(str) insert dashes ('-')        *
 * between each two odd numbers in str. For example: if str is  *
 * 454793 the output should be 4547-9-3. Don't count zero as an *
 * odd number.                                                  *
 *                                                              *
 * Examples                                                     *
 * Input 1: 99946                                               *
 * Output 1: 9-9-946                                            *
 *                                                              *
 * Input 2: 56730                                               *
 * Output 2: 567-30                                             *
 ***************************************************************/
void main() {
  print(dashInsert("454793")); // Output: 4547-9-3
  print(dashInsert("99946")); // Output: 9-9-946
  print(dashInsert("56730")); // Output: 567-30
}

String dashInsert(String str) {
  StringBuffer result = StringBuffer();

  for (int index = 0; index < str.length; index++) {
    result.write(str[index]);

    // Check if both the current and next characters are odd numbers
    if (index < str.length - 1) {
      int currentDigit = int.parse(str[index]);
      int nextDigit = int.parse(str[index + 1]);

      if (isOdd(currentDigit) && isOdd(nextDigit)) {
        result.write('-');
      }
    }
  }
  return result.toString();
}

// Helper method to check if a number is odd
bool isOdd(int num) {
  return num % 2 != 0;
}
