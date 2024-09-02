void main() {
  /// Use break to stop looping
  List<int> digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int i = 0; i < digits.length; i++) {
    if (digits[i] > 5) {
      break;
    }
    print(digits[i]);
  }

  /// Use continue to skip to the next loop iteration.
  var words = ["King", "Milk", "Opt", "Sea", "Dare", "Ball", "Cry"];
  for (int i = 0; i < words.length; i++) {
    if (words[i].length < 4) continue;
    print("Word: ${words[i]}");
  }
  print("");

  // another way to write the code above using Iterable
  var nameList = ["Bob", "Jane", "Jake", "Anita", "Jon", "Asa", "Steve"];
  Iterable<String> names = nameList;
  names.where((name) => name.length >= 5).forEach((name) => print(name));
}
