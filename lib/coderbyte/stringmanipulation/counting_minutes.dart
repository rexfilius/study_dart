/*
 *             CODERBYTE COUNTING MINUTES ONE CHALLENGE         *
 *                                                              *
 * Problem Statement                                            *
 * Have the function CountingMinutesI(str) take the str         *
 * parameter being passed which will be two times               *
 * (each properly formatted with a colon and am or pm)          *
 * separated by a hyphen and return the total number of minutes *
 * between the two times. The time will be in a 12 hour clock   *
 * format.                                                      *
 * For example: if str is 9:00am-10:00am then the               *
 * output should be 60. If str is 1:00pm-11:00am the output     *
 * should be 1320.                                              *
 *                                                              *
 * Examples                                                     *
 * Input 1: "12:30pm-12:00am"                                   *
 * Output 1: 690                                                *
 *                                                              *
 * Input 2: "1:23am-1:08am"                                     *
 * Output 2: 1425                                               *
 ***************************************************************/
void main() {
  print(countingMinutesI("12:30pm-12:00am")); // Output: 690
  print(countingMinutesI("1:23am-1:08am")); // Output: 1425
  print(countingMinutesI("9:00am-10:00am")); // Output: 60
  print(countingMinutesI("1:00pm-11:00am")); // Output: 1320
}

int countingMinutesI(String str) {
  // Split the input string into two times
  List<String> times = str.split('-');
  String time1 = times[0];
  String time2 = times[1];

  // Convert the times to minutes since midnight
  int minutes1 = convertToMinutes(time1);
  int minutes2 = convertToMinutes(time2);

  // Calculate the difference in minutes
  int difference = minutes2 - minutes1;

  // If the difference is negative, it means the time range spans midnight
  if (difference < 0) {
    difference += 1440; // Add 24 hours worth of minutes (1440 minutes)
  }

  return difference;
}

// Helper method to convert a time string to minutes since midnight
int convertToMinutes(String time) {
  bool isPM = time.endsWith('pm');
  List<String> parts = time.substring(0, time.length - 2).split(':');

  int hours = int.parse(parts[0]);
  int minutes = int.parse(parts[1]);

  // Adjust for 12-hour format
  if (isPM && hours != 12) {
    hours += 12;
  } else if (!isPM && hours == 12) {
    hours = 0;
  }

  return hours * 60 + minutes;
}
