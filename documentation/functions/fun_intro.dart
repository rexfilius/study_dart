/// Dart is a true object-oriented language, so even functions are objects and
/// have a type - Function. This means that functions can be assigned to
/// variables or passed as arguments to other functions. You can also call an
/// instance of a Dart class as if it were a function (Callable classes)
bool isLessThanZero(int number) => number < 0;

/// Although Effective Dart recommends type annotations for public APIs,
/// the function still works if you omit the types
isGreaterThanZero(int number) => number > 0;

/// For functions that contain just one expression, you use a shorthand syntax.
/// The "=> expr" syntax is a shorthand for { return expr; }.
/// The "=>" notation is sometimes referred to as "arrow syntax".
/// NOTE: Only an expression - not a statement - can appear between
/// the arrow (=>) and the semicolon (;). e.g. you can't put an if statement
/// there, but you can use a conditional expression.
String sayHello(String name) => "Hello $name";

bool isEven(int number) => number % 2 == 0;
