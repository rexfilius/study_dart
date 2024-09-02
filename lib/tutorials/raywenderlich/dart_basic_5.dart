void main() {
  /// Control flow lets you dictate when to execute, skip over or repeat
  /// certain lines of code. You use conditionals and loops to handle
  /// control flow in Dart.

  /// If-Else statements
  var animal = 'fox';
  if (animal == 'cat' || animal == 'dog') {
    print('Animal is a house pet.');
  } else if (animal == 'rhino') {
    print("That's a big animal.");
  } else {
    print('Animal is NOT a house pet.');
  }

  /// While loops
  /// There are two forms of while loops in Dart: while and do-while.
  /// The difference is that for while, the loop condition occurs before the
  /// code block. In do-while, the condition occurs after. That means that
  /// do-while loops ensure the code block runs at least one time.
  var aNumber = 1;
  while (aNumber < 10) {
    print(aNumber);
    aNumber++;
  }

  var i = 1;
  do {
    print(i);
    i++;
  } while (i < 10);
  print('');

  /// Continue & Break
  /// continue: skips remaining code inside a loop and immediately goes to
  /// the next iteration.
  /// break: stops the loop and continues execution after the body of the loop.

  /// For loops
  /// In Dart, you use for loops to loop a predetermined number of times.
  /// for loops consist of initialization, a loop condition and an action.
  /// Dart also offers a for-in loop, which iterates over a collection of objects
  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    sum += i;
  }
  print("The sum is $sum"); // The sum is 55

}
