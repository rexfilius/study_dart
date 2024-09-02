/// IMPORTANT CONCEPTS IN DART::
///
/// 1. Everything you can place in a variable is an object, and every object is
/// an instance of a class. Even numbers, functions, and null are objects.
/// With the exception of null (if you enable sound null safety), all objects
/// inherit from the Object class.
///
/// 2. Although Dart is strongly typed, type annotations are optional because
/// Dart can infer types.
///
/// 3. If you enable null safety, variables can't contain null unless you say
/// they can. You can make a variable nullable by putting a question mark '?'
/// at the end of its type. e.g. a variable of type 'int?' might be an
/// integer, or it might be null. If you know that an expression never
/// evaluates to null but Dart disagrees, you can add '!' to assert that
/// it isn't null (and to throw an exception if it is).
///
/// 4. When you want to explicitly say that any type is allowed, use the type
/// 'Object?' (if you've enabled null safety), Object, or - if you must defer
/// type checking until runtime - the special type 'dynamic'.
///
/// 5. Dart supports generic types, like List<int> (a list of integers) or
/// List<Object> (a list of objects of any type).
///
/// 6. Dart supports top-level functions (such as main()), as well as functions
/// tied to a class or object (static and instance methods, respectively). You
/// can also create functions within functions (nested or local functions).
///
/// 7. Dart supports top-level variables, as well as variables tied to a class
/// or object (static and instance variables). Instance variables are sometimes
/// known as fields or properties.
///
/// 8. Dart doesn't have the keywords public, protected, and private. If an
/// identifier starts with an underscore (_), it's private to its library.
///
/// 9. Identifiers can start with a letter or underscore (_), followed by any
/// combination of those characters plus digits.
///
/// 10. Dart has both expressions (which have runtime values) and
/// statements (which don't).
/// e.g. the conditional expression 'condition ? expr1 : expr2' has a value of
/// expr1 or expr2. Compare that to an if-else statement, which has no value.
/// A statement often contains one or more expressions, but an expression can't
/// directly contain a statement.
///
/// 11. Dart tools can report two kinds of problems: warnings and errors.
/// Warnings are just indications that your code might not work, but they
/// don't prevent your program from executing. Errors can be either
/// compile-time or run-time. A compile-time error prevents the code from
/// executing at all; a run-time error results in an exception
/// being raised while the code executes.
