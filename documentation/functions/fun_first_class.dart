/// You can pass a function as a parameter to another function.
void printElement(int element) => print(element);

/// You can also assign a function to a variable
var makeTextAllCaps = (String text) {
  return text.toUpperCase();
};

void main() {
  /// Passing printElement() as a parameter.
  var list = [1, 2, 3];
  list.forEach(printElement);

  print(makeTextAllCaps("Hello"));
}

