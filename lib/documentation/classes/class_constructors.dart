void main() {
  /// You can create an object using a constructor. Constructor names can be
  /// either ClassName or ClassName.identifier
  Dog dog1 = Dog();
  Dog dog2 = Dog.fromRandom("Husky", 30);
  print("$dog1 $dog2 \n");

  /// Some classes provide constant constructors. To create a compile-time
  /// constant using a constant constructor, put the const keyword before the
  /// constructor name.
  var bird = const Bird("Egypt", "Eagle");
  print("Bird $bird");

  /// Constructing two identical compile-time constants results in a single,
  /// canonical instance i.e they are the same instances
  var bird2 = const Bird("Africa", "Stork");
  var bird3 = const Bird("Africa", "Stork");
  print(bird2 == bird3); // true
  print(identical(bird2, bird3)); // true
  print("");

  /// If a constant constructor is outside of a constant context and is invoked
  /// without const, it creates a non-constant object.
  var bird4 = const Bird("Mongolia", "Stork"); // Creates a constant
  var bird5 = Bird("Mongolia", "Stork");
  // Does NOT create a constant, not the same instance with bird4
  print(bird4 == bird5); // false
  print(identical(bird4, bird5)); // false

  /// To get an object's type at runtime, you can use the Object property
  /// 'runtimeType', which returns a Type object.
  var a = 45;
  print('The type of $a is ${a.runtimeType}');

  /// NOTE: Use a type test operator rather than runtimeType to test an
  /// object's type. In production environments, the test "object is Type"
  /// is more stable than the test "object.runtimeType == Type".
}

class Dog {
  String breed = "none";
  double weight = 0.0;

  Dog();

  Dog.fromRandom(String dogName, double dogWeight) {
    breed = dogName;
    weight = dogWeight;
  }

  @override
  String toString() => "Dog(breed:$breed, weight:$weight)";
}

/// If the objects of a particular class can never change, because all fields
/// of the class are final, you can add const to the constructor to ensure that
/// all instances of the class will be constants at compile-time.
class Bird {
  final String habitat;
  final String breed;

  static const Bird baseBird = Bird("", "");

  const Bird(
    this.habitat,
    this.breed,
  );

  @override
  String toString() => "Bird($habitat, $breed)";
}
