/// Dart supports first-class functions, meaning that it treats functions like
/// any other data type. You can assign them to variables, pass them as
/// arguments and return them from other functions. To pass these functions
/// around as values, omit the function name and return type. Since there's
/// no name, this type of function is called an anonymous function.
void main() {
  /// onPressed has a value of type Function. The empty parentheses indicate the
  /// function has no parameters. Like regular functions, the code inside the
  /// curly brackets is the function body.
  /// To execute the code within the function body,
  /// call the variable name as if it were the name of the function:
  onPressed() {
    print('button pressed');
  }

  onPressed();

  onTapped() => print("Screen is tapped");
  onTapped();

  /// You'll often see anonymous functions in Flutter, passed around as
  /// callbacks for UI events. This lets you specify the code that runs when a
  /// user does something, like pressing a button.
  /// Another common place for anonymous functions is with collections. You can
  /// give a collection an anonymous function that will perform some task on
  /// each element of the collection
  final drinks = ['water', 'juice', 'milk'];
  final bigDrinks = drinks.map((drink) => drink.toUpperCase());
  print(bigDrinks); // (WATER, JUICE, MILK)
}
