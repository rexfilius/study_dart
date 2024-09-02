/// LIBRARY TOUR
/// A DateTime object is a point in time. The time zone is either UTC
/// or the local time zone.
/// You can create DateTime objects using several constructors
void main() {
  var now = DateTime.now();
  print("Date-Time now: $now");

  // Create a new DateTime with the local time zone.
  var y2k = DateTime(2000); // January 1, 2000
  print("y2k: $y2k");

  // Specify the month and day.
  y2k = DateTime(2000, 1, 2); // January 2, 2000
  print("y2k: $y2k");

  // Specify the date as a UTC time.
  y2k = DateTime.utc(2000); // 1/1/2000, UTC
  print("y2k-UTC: $y2k");

  // Specify a date and time in ms since the Unix epoch.
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print("y2k-msSinceEpoch: $y2k");

  // Parse an ISO 8601 date.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');

  // The 'millisecondsSinceEpoch' property of a date returns the number of
  // milliseconds since the 'Unix epoch' - January 1, 1970, UTC.
  var dateEpoch = DateTime.utc(2000); // 1/1/2000, UTC
  assert(dateEpoch.millisecondsSinceEpoch == 946684800000);

  var unixEpoch = DateTime.utc(1970); // 1/1/1970, UTC
  assert(unixEpoch.millisecondsSinceEpoch == 0);

  // Use the Duration class to calculate the difference between two dates and
  // to shift a date forward or backward
  var y2kDate = DateTime.utc(2000);

  // Add one year.
  var y2001 = y2kDate.add(const Duration(days: 366));
  assert(y2001.year == 2001);

  // Subtract 30 days.
  var december2000 = y2001.subtract(const Duration(days: 30));
  assert(december2000.year == 2000);
  assert(december2000.month == 12);

  // Calculate the difference between two dates. Returns a Duration object.
  var duration = y2001.difference(y2k);
  assert(duration.inDays == 366); // y2k was a leap year.

  // Warning: Using a Duration to shift a DateTime by days can be problematic,
  // due to clock shifts (to daylight saving time, for example).
  // Use UTC dates if you must shift days.
}
