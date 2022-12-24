bool isLengthGreaterThan5(String item) {
  return item.length > 5;
}

/// Different ways of using the firstWhere() function
void main() {
  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

  // simple expression
  var foundItem1 = items.firstWhere((element) => element.length > 5);
  print(foundItem1);

  // using a function block
  var foundItem2 = items.firstWhere((item) {
    return item.length > 5;
  });
  print(foundItem2);

  // pass in a function reference
  var foundItem3 = items.firstWhere(isLengthGreaterThan5);
  print(foundItem3);

  // use an 'orElse' function in case no value is found!
  var foundItem4 = items.firstWhere(
    (item) => item.length > 10,
    orElse: () => 'None',
  );
  print(foundItem4);
}
