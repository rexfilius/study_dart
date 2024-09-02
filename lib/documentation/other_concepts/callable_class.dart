/// To allow an instance of your Dart class to be called like a function,
/// implement the call() method.
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

void main() {
  var wannabeFunction = WannabeFunction();
  var callableClass = wannabeFunction('Hi', 'there,', 'gang');
  print(callableClass);
}