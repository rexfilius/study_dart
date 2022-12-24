/// A Symbol object represents an operator or identifier declared in a Dart
/// program. You might never need to use symbols, but they're invaluable for
/// APIs that refer to identifiers by name, because minification changes
/// identifier names but not identifier symbols.
///
/// To get the symbol for an identifier, use a symbol literal, which is just #
/// followed by the identifier
/// e.g #radix
/// Symbol literals are compile-time constants.
