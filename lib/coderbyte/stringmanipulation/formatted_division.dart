import 'package:intl/intl.dart';

/*
 *               CODERBYTE FORMATTED DIVISION CHALLENGE         *
 *                                                              *
 * Problem Statement                                            *
 * Have the function FormattedDivision(num1,num2) take both     *
 * parameters being passed, divide num1 by num2, and return the *
 * result as a string with properly formatted commas and 4      *
 * significant digits after the decimal place.                  *
 *                                                              *
 * For example: if num1 is 123456789 and num2 is 10000          *
 * the output should be "12,345.6789".                          *
 * The output must contain a number in the one's place even     *
 * if it is a zero.                                             *
 *                                                              *
 * Examples                                                     *
 * Input 1: 2 and 3                                             *
 * Output 1: 0.6667                                             *
 *                                                              *
 * Input 2: 10 and 10                                           *
 * Output 2: 1.0000                                             *
 ***************************************************************/
void main() {
  print(formattedDivision(123456789, 10000)); // Output: "12,345.6789"
  print(formattedDivision(2, 3)); // Output: "0.6667"
  print(formattedDivision(10, 10)); // Output: "1.0000"
}

String formattedDivision(int num1, int num2) {
  // Perform the division and store the result
  double result = num1 / num2;

  // Create a NumberFormat object to format the result
  NumberFormat formatter = NumberFormat("#,##0.0000");

  // Return the formatted result as a string
  return formatter.format(result);
}
