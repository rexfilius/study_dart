/// Switch statements in Dart compare integer, string, or compile-time constants
/// using == The compared objects must all be instances of the same class
/// (and not of any of its subtypes), and the class must not override ==
/// Enumerated types work well in switch statements.
///
/// Each non-empty case clause ends with a break statement, as a rule. Other
/// valid ways to end a non-empty case clause are a continue, throw, or return
/// statement.
///
/// Use a default clause to execute code when no case clause matches.
/// A case clause can have local variables, which are visible only inside the
/// scope of that clause.
void main() {
  var command = 'OPEN';

  switch (command) {
    case 'CLOSED':
      print("Case is closed");
      break;
    case 'PENDING':
      print("Case is pending");
      break;
    case 'APPROVED':
      print("Case is approved");
      break;
    case 'DENIED':
      print("Case is denied");
      break;
    case 'OPEN':
      print("Case is open");
      break;
    default:
      print("Case is unknown");
  }

  /// Dart does support empty case clauses, allowing a form of fall-through.
  var signal = 'CLOSED';
  switch (signal) {
    case 'CLOSED': // Empty case falls through.
    case 'NOW_CLOSED': // Runs for both CLOSED and NOW_CLOSED.
      print("Signal is no longer available");
      break;
  }

  /// If you really want fall-through,
  /// you can use a continue statement and a label.
  var codeWord = 'CLOSED';
  switch (codeWord) {
    case 'CLOSED':
      print("is closed");
      continue nowClosed; // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED': // Runs for both CLOSED and NOW_CLOSED.
      print("is now closed");
      break;
  }
}
