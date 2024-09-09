/*
 *             CODERBYTE FORMATTED NUMBERS CHALLENGE            *
 *                                                              *
 * Problem Statement                                            *
 * Have the function FormattedNumber(strArr) take the strArr    *
 * parameter being passed, which will only contain a single     *
 * element, and return the string true if it is a valid number  *
 * that contains only digits with properly placed decimals &    *
 * commas, otherwise return the string false.                   *
 * For example: if strArr is ["1,093,222.04"] then your program *
 * should return the string true, but if the input were         *
 * ["1,093,22.04"] then your program should return the string   *
 * false. The input may contain characters other than digits.   *
 *                                                              *
 * Examples                                                     *
 * Input 1: ["0.232567"]                                        *
 * Output 1: true                                               *
 *                                                              *
 * Input 2: ["2,567.00.2"]                                      *
 * Output 2: false                                              *
 *                                                              *
 ***************************************************************/
void main() {
  print(formattedNumber(["1,093,222.04"])); // Output: true
  print(formattedNumber(["1,093,22.04"])); // Output: false
  print(formattedNumber(["0.232567"])); // Output: true
  print(formattedNumber(["2,567.00.2"])); // Output: false
}

// The regular expression ^\\d{1,3}(,\\d{3})*(\\.\\d+)?$
// is used to check if the string is a valid number with:
// - A sequence of 1 to 3 digits at the beginning.
// - Groups of 3 digits separated by commas.
// - An optional decimal part.
String formattedNumber(List<String> strArr) {
  // The input will contain only a single element
  String number = strArr[0];

  // Regular expression to validate the number format
  RegExp regex = RegExp(r'^\d{1,3}(,\d{3})*(\.\d+)?$');

  // Check if the number matches the regular expression
  if (regex.hasMatch(number)) {
    return 'true';
  } else {
    return 'false';
  }
}
