/*
 *             CODERBYTE CONSONANT COUNT CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * Have the function ConsonantCount(str) take the str string	*
 * parameter being passed and return the number of consonants 	*
 * the string contains.  					*
 *                                                              *
 * Examples                                                     *
 * Input 1: "Hello World"                                       *
 * Output 1: 7		                                        *
 *                                                              *
 * Input 2: "Alphabets"                                         *
 * Output 2: 6                                                  *
 *                                                              *
 ***************************************************************/
void main() {
  print(consonantCount("Hello World")); // Output: 7
  print(consonantCount("Alphabets")); // Output: 6
  print(consonantCount("AEIOU")); // Output: 0
  print(consonantCount("BCDFG")); // Output: 5
  print("\n");

  print(consonantCount2("Hello World")); // Output: 7
  print(consonantCount2("Alphabets")); // Output: 6
  print(consonantCount2("AEIOU")); // Output: 0
  print(consonantCount2("BCDFG")); // Output: 5
}

int consonantCount(String str) {
  int count = 0;
  str = str.toLowerCase();

  for (int i = 0; i < str.length; i++) {
    String c = str[i];
    if (c.compareTo('a') >= 0 &&
        c.compareTo('z') <= 0 &&
        !'aeiou'.contains(c)) {
      count++;
    }
  }
  return count;
}

// RegExp(r'[a-z]'): Checks if the character is a letter.
// RegExp(r'[aeiou]'): Checks if the character is a vowel.

int consonantCount2(String str) {
  int count = 0;
  str = str.toLowerCase();

  for (int i = 0; i < str.length; i++) {
    String c = str[i];
    if (c.compareTo('a') >= 0 && c.compareTo('z') <= 0 && !isVowel(c)) {
      count++;
    }
  }
  return count;
}

bool isVowel(String c) {
  // Regex pattern to match vowels (both uppercase and lowercase)
  return RegExp(r'[AEIOUaeiou]').hasMatch(c);
}
