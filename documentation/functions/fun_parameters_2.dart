/// Wrapping a set of function parameters in "[]" marks them as
/// Optional Positional Parameters.
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

/// Your function can use '=' to define default values for both named and
/// positional parameters. The default values must be compile-time constants.
/// If no default value is provided, the default value is null.
void saySomething({bool one = true, bool two = false}) {
  print("It may be $one or $two");
}

/// Set default values for positional parameters
/// You can also pass lists or maps as default values.
void sendAMessage(String name, [String app = "WhatsApp"]) {
  print("Hello $name, I sent a message on $app");
}

void main() {
  var word = say("Bob", "hello");
  print(word);
  var word2 = say("John", "hi", "torch");
  print(word2);
  print("");

  saySomething();
  print("");

  sendAMessage("Bob");
  sendAMessage("Joe", "Twitter");
}
