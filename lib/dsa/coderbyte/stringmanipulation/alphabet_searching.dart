
/*
 *             CODERBYTE ALPHABET SEARCHING CHALLENGE           *
 *                                                              *
 * Problem Statement                                            *
 * Have the function AlphabetSearching(str) take the string     *
 * parameter being passed and return the string true if every   *
 * single letter of the English alphabet exists in the string,  *
 * otherwise return the string false.                           *
 * For example: if str is "zacxyjbbkfgtbhdaielqrm45pnsowtuv"    *
 * then your program should return the string true because every*
 * character in the alphabet exists in this string even though  *
 * some characters appear more than once.                       *
 *                                                              *
 * Examples                                                     *
 * Input 1: abcdefghijklmnopqrstuvwxyyyy                        *
 * Output 1: false                                              *
 *                                                              *
 * Input 2: abc123456kmo                                        *
 * Output 2: false                                              *
 ***************************************************************/
// void main() {
//   print(alphabetSearching("zacxyjbbkfgtbhdaielqrm45pnsowtuv"));  // Output: true
//   print(alphabetSearching("abcdefghijklmnopqrstuvwxyz"));       // Output: true
//   print(alphabetSearching("abcdefg hijklmnopqrstuvwxyz"));      // Output: true
//   print(alphabetSearching("abc123456kmo"));                     // Output: false
//   print(alphabetSearching("abcdefghijklmnopqrstuvwxyyyy"));     // Output: false
// }

String alphabetSearching(String str) {
  str = str.toLowerCase();
  Set<String> alphabetSet = {};

  for (int i = 0; i < str.length; i++) {
    if (str[i].contains(RegExp(r'[a-z]'))) {
      alphabetSet.add(str[i]);
    }
  }

  return alphabetSet.length == 26 ? 'true' : 'false';
}