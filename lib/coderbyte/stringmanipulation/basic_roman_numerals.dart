
/*
 *             CODERBYTE BASIC ROMAN NUMERALS CHALLENGE         *
 *                                                              *
 * Problem Statement                                            *
 * Have the function BasicRomanNumerals(str) read str which     *
 * will be a string of Roman numerals. The numerals being used  *
 * are: I for 1, V for 5, X for 10, L for 50, C for 100, D for  *
 * 500 and M for 1000. In Roman numerals, to create a number    *
 * like 11 you simply add a 1 after the 10, so you get XI. But  *
 * to create a number like 19, you use the subtraction notation *
 * which is to add an I before an X or V (or add an X before    *
 * an L or C). So 19 in Roman numerals is XIX.                  *
 *                                                              *
 * The goal of your program is to return the decimal equivalent *
 * of the Roman numeral given. For example: if str is "XXIV"    *
 * your program should return 24                                *
 *                                                              *
 * Examples                                                     *
 * Input 1: "IV"                                                *
 * Output 1: 4                                                  *
 *                                                              *
 * Input 2: XLVI                                                *
 * Output 2: 46                                                 *
 ***************************************************************/
void main() {
  print(basicRomanNumerals("IV")); // Output: 4
  print(basicRomanNumerals("XXIV")); // Output: 24
  print(basicRomanNumerals("XLVI")); // Output: 46
  print(basicRomanNumerals("MCMXC")); // Output: 1990
}

int basicRomanNumerals(String str) {
  // Create a map to store the Roman numerals and their corresponding values
  Map<String, int> romanMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int result = 0;
  int stringLength = str.length;

  // Loop through the characters of the Roman numeral string
  for (int i = 0; i < stringLength; i++) {
    // Get the value of the current Roman numeral
    int currentVal = romanMap[str[i]]!;

    // Check if the next Roman numeral is larger (for subtraction cases)
    if (i + 1 < stringLength && romanMap[str[i + 1]]! > currentVal) {
      // Subtract the current value from the result
      result -= currentVal;
    } else {
      // Add the current value to the result
      result += currentVal;
    }
  }

  return result;
}
