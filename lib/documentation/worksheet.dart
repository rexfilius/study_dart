void main() {
  print(sayHello(''));
}

String sayHello(String name) {
  if (name.isEmpty) {
    return "Hello there";
  }
  return "Hello $name!";
}
