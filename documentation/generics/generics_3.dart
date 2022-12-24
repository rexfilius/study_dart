/// Dart also allows type arguments on methods and functions.
T firstInList<T>(List<T> list) {
  T firstElement = list[0];
  return firstElement;
}

/// The generic type parameter on the function above allows you to use
/// the type argument T in several places:
/// - In the function's return type (T).
/// - In the type of an argument (List<T>).
/// - In the type of a local variable (T firstElement).
void main() {
  var girlsList = <String>['Tasha', 'Mercy', 'Kate'];
  print(firstInList(girlsList));
}
