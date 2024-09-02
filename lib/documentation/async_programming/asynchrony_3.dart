/// Declaring Async Functions::
/// An async function is a function whose body is marked with the 'async'
/// modifier. Adding the async keyword to a function makes it return a Future.
String checkVersion() => "1.0.0";

// If you change the function above to be an async function - for example,
// because a future implementation will be time consuming -
// the returned value is a Future.
Future<String> checkVersions() async => "1.0.0";

/// The function's body doesn't need to use the Future API. Dart creates the
/// Future object if necessary. If your function doesn't return a useful value,
/// make it return type Future<void>.
