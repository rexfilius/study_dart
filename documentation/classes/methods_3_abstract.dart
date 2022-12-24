/// Instance, getter, and setter methods can be abstract,
/// defining an interface but leaving its implementation up to other classes.
/// Abstract methods can only exist in abstract classes.
/// To make a method abstract, use a semicolon (;) instead of a method body.
abstract class Doer {
  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  @override
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
    print('I am doing something. I am productive.');
  }
}
