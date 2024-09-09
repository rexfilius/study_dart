/*
 *             CODERBYTE ALPHABET SOUP CHALLENGE                *
 *                                                              *
 * Problem Statement                                            *
 * Have the function AlphabetSoup(str) take the str string      *
 * parameter being passed and return the string with the        *
 * letters in alphabetical order (ie. hello becomes ehllo).     *
 * Assume numbers and punctuation symbols will not be included  *
 * in the string.                                               *
 *                                                              *
 * Examples                                                     *
 * Input 1: coderbyte                                           *
 * Output 1: bcdeeorty                                          *
 *                                                              *
 * Input 2: hooplah                                             *
 * Output 2: ahhloop                                            *
 *                                                              *
 ***************************************************************/
// void main() {
//   print(alphabetSoup("coderbyte"));  // Output: bcdeeorty
//   print(alphabetSoup("hooplah"));    // Output: ahhloop
// }

String alphabetSoup(String str) {
  // Convert the string to a list of characters
  List<String> charList = str.split('');

  // Sort the list of characters
  charList.sort();

  // Convert the sorted list back to a string
  return charList.join('');
}
