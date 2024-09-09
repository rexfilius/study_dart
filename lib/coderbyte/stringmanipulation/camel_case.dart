/*
 *             CODERBYTE CAMEL CASE CHALLENGE                   *
 *                                                              *
 * Problem Statement                                            *
 * Have the function CamelCase(str) take the str parameter being*
 * passed and return it in proper camel case format where the   *
 * first letter of each word is capitalized (excluding the first*
 * letter). The string will only contain letters and some       *
 * combination of delimiter punctuation characters separating   *
 * each word.                                                   *
 *                                                              *
 * For example: if str is "BOB loves-coding" then your program  *
 *  should return the string bobLovesCoding.                    *
 *                                                              *
 * Examples                                                     *
 * Input 1: "cats AND*Dogs-are Awesome"                         *
 * Output 1: catsAndDogsAreAwesome                              *
 *                                                              *
 * Input 2: "a b c d-e-f%g"                                     *
 * Output 2: aBCDEFG                                            *
 ***************************************************************/
void main() {
  print(camelCase("BOB loves-coding"));
  // Output: bobLovesCoding

  print(camelCase("cats AND*Dogs-are Awesome"));
  // Output: catsAndDogsAreAwesome

  print(camelCase("a b c d-e-f%g"));
  // Output: aBCDEFG
}

String camelCase(String str) {
  // Split the string into wordsArray using any non-letter character as delimiter
  List<String> wordsArray = str.split(RegExp(r'[^a-zA-Z]'));
  StringBuffer result = StringBuffer();

  // Process each word
  for (int i = 0; i < wordsArray.length; i++) {
    String word = wordsArray[i].toLowerCase();
    if (i == 0) {
      // Keep the first word in lowercase
      result.write(word);
    } else if (word.isNotEmpty) {
      // Capitalize the first letter of subsequent wordsArray
      result.write(word[0].toUpperCase());
      result.write(word.substring(1));
    }
  }

  return result.toString();
}
