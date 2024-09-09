/*
 *             CODERBYTE DASH INSERT TWO CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * Have the function DashInsertII(str) insert dashes ('-')      *
 * between each two odd numbers and insert asterisks ('*')      *
 * between each two even numbers in str.                        *
 *                                                              *
 * For example: if str is 4546793 the output should be          *
 * 454*67-9-3. Don't count zero as an odd or even number.       *
 *                                                              *
 * Examples                                                     *
 * Input 1: 99946                                               *
 * Output 1: 9-9-94*6                                           *
 *                                                              *
 * Input 2: 56647304                                            *
 * Output 2: 56*6*47-304                                        *
 ***************************************************************/
void main() {
  print(dashInsertII("4546793")); // Output: 454*67-9-3
  print(dashInsertII("99946")); // Output: 9-9-94*6
  print(dashInsertII("56647304")); // Output: 56*6*47-304
  print(dashInsertII("03443")); // Output: 034*43
}

String dashInsertII(String str) {
  StringBuffer result = StringBuffer();

  for (int index = 0; index < str.length; index++) {
    result.write(str[index]);

    // Ensure we're not at the last character
    if (index < str.length - 1) {
      int currentDigit = int.parse(str[index]);
      int nextDigit = int.parse(str[index + 1]);

      // Insert dash if both are odd numbers
      if (isOdd(currentDigit) && isOdd(nextDigit)) {
        result.write('-');
      }
      // Insert asterisk if both are even numbers
      else if (isEven(currentDigit) && isEven(nextDigit)) {
        result.write('*');
      }
    }
  }

  return result.toString();
}

// Helper method to check if a number is odd
bool isOdd(int num) {
  return num % 2 != 0;
}

// Helper method to check if a number is even
bool isEven(int num) {
  return num % 2 == 0 && num != 0;
}
