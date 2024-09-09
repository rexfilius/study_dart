
/*
 *             CODERBYTE BINARY REVERSAL CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * Have the function BinaryReversal(str) take the str parameter *
 * being passed, which will be a positive integer, take its     *
 * binary representation (padded to the nearest N * 8 bits),    *
 * reverse that string of bits, and then finally return the new *
 * reversed string in decimal form. For example: if str is "47" *
 * then the binary version of this integer is 101111 but we pad *
 * it to be 00101111. Your program should reverse this binary   *
 * string which then becomes: 11110100 and then finally return  *
 * the decimal version of this string, which is 244.            *
 *                                                              *
 * Examples                                                     *
 * Input 1: "213"                                               *
 * Output 1: 171                                                *
 *                                                              *
 * Input 2: "4567"                                              *
 * Output 2: 60296                                              *
 ***************************************************************/
void main() {
  print(binaryReversal("47"));   // Output: 244
  print(binaryReversal("213"));  // Output: 171
  print(binaryReversal("4567")); // Output: 60296
}

int binaryReversal(String str) {
  // Parse the string to an integer
  int num = int.parse(str);

  // Convert the number to a binary string
  String binaryString = num.toRadixString(2);

  // Pad the binary string to the nearest 8 bits
  int paddingLength = 8 - (binaryString.length % 8);
  if (paddingLength != 8) {
    binaryString = '0' * paddingLength + binaryString;
  }

  // Reverse the binary string
  String reversedBinaryString = binaryString.split('').reversed.join('');

  // Convert the reversed binary string back to an integer
  return int.parse(reversedBinaryString, radix: 2);
}
