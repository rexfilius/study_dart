/*
 *             CODERBYTE AB CHECKS CHALLENGE                    *
 *                                                              *
 * Problem Statement                                            *
 * Have the function ABCheck(str) take the str parameter being  *
 * passed and return the string true if the characters a and b  *
 * are separated by exactly 3 places anywhere in the string at  *
 * least once (ie. "lane borrowed" would result in true because *
 * there is exactly three characters between a and b).          *
 * Otherwise return the string false.                           *
 *                                                              *
 * Examples                                                     *
 * Input 1: after badly                                         *
 * Output 1: false                                              *
 *                                                              *
 * Input 2: Laura sobs                                          *
 * Output 2: true                                               *
 *                                                              *
 ***************************************************************/
// void main() {
//   print(abcheck("after badly"));
//   print(abcheck("Laura sobs"));
// }

String abcheck(String str) {
  str = str.toLowerCase();

  for (int index = 0; index < str.length - 4; index++) {
    if ((str[index] == 'a' && str[index + 4] == 'b') ||
        (str[index] == 'b' && str[index + 4] == 'a')) {
      return 'true';
    }
  }

  return 'false';
}
