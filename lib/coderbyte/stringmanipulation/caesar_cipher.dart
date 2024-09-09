
/*
 *             CODERBYTE CAESAR CIPHER CHALLENGE                *
 *                                                              *
 * Problem Statement                                            *
 * Have the function CaesarCipher(str,num) take the str         *
 * parameter and perform a Caesar Cipher shift on it using the  *
 * num parameter as the shifting number. A Caesar Cipher works  *
 * by shifting each letter in the string N places in the        *
 * alphabet (in this case N will be num). Punctuation, spaces,  *
 * and capitalization should remain intact.                     *
 * For example if the string is "Caesar Cipher" and num is 2    *
 * the output should be "Ecguct Ekrjgt".                        *
 *                                                              *
 * Examples                                                     *
 * Input 1: "Hello" and num = 4                                 *
 * Output 1: Lipps                                              *
 *                                                              *
 * Input 2: "abc" and num = 0                                   *
 * Output 2: abc                                                *
 ***************************************************************/
void main() {
  print(caesarCipher("Hello", 4)); // Output: Lipps
  print(caesarCipher("Caesar Cipher", 2)); // Output: Ecguct Ekrjgt
  print(caesarCipher("abc", 0)); // Output: abc
  print(caesarCipher("XYZ", 3)); // Output: ABC
}

String caesarCipher(String str, int num) {
  StringBuffer result = StringBuffer();

  for (int i = 0; i < str.length; i++) {
    String c = str[i];
    RegExp regExp = RegExp(r'[a-zA-Z]');

    if (regExp.hasMatch(c)) {
      // Determine if the character is uppercase or lowercase
      String base = c.toUpperCase() == c ? 'A' : 'a';

      // Shift the character and wrap around the alphabet
      int dd = (c.codeUnitAt(0) - base.codeUnitAt(0) + num);
      c = String.fromCharCode(dd % 26 + base.codeUnitAt(0));
    }

    // Append the shifted or unmodified character to the result
    result.write(c);
  }

  return result.toString();
}
