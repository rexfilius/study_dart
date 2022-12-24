/// During development, use an assert statement —
/// assert(condition, optionalMessage); — to disrupt normal execution
/// if a boolean condition is false
void main() {
  // Make sure the variable has a non-null value.
  String? text = null;
  assert(text != null);

  // Make sure the value is less than 100.
  var number = 400;
  assert(number < 100);

  // Make sure this is an https URL.
  var urlString = "https://google.com";
  assert(urlString.startsWith('https'));

  /// To attach a message to an assertion, add a string as the second argument
  /// to assert (optionally with a trailing comma). The first argument to
  /// assert can be any expression that resolves to a boolean value. If the
  /// expression's value is true, the assertion succeeds and execution
  /// continues. If it's false, the assertion fails and an exception
  /// (an AssertionError) is thrown.
  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');

  /// When exactly do assertions work?
  /// That depends on the tools and framework you're using:
  /// 1. Flutter enables assertions in debug mode.
  /// 2. Development-only tools such as dartdevc typically enable
  /// assertions by default.
  /// 3. Some tools, such as dart run and dart2js support assertions through a
  /// command-line flag: --enable-asserts.
  /// In production code, assertions are ignored, and the arguments to assert
  /// are not evaluated.
}
