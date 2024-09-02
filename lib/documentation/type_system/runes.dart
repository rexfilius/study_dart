/// In Dart, runes expose the Unicode code points of a string. You can use the
/// characters package to view or manipulate user-perceived characters,
/// also known as Unicode(extended) grapheme clusters.
///
/// Unicode defines a unique numeric value for each letter, digit, and symbol
/// used in all of the world's writing systems. Because a Dart string is a
/// sequence of UTF-16 code units, expressing Unicode code points within a
/// string requires special syntax.
///
/// The usual way to express a Unicode code point is "\uXXXX", where XXXX is a
/// 4-digit hexadecimal value. For example, the heart character (♥) is \u2665.
///
/// To specify more or less than 4 hex digits, place the value in curly
/// brackets. For example, the laughing emoji (😆) is \u{1f606}.
///
/// If you need to read or write individual Unicode characters, use the
/// characters getter defined on String by the characters package. The returned
/// Characters object is the string as a sequence of grapheme clusters.

