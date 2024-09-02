/// Enumerated types, often called enumerations or enums, are a special kind
/// of class used to represent a fixed number of constant values.
///
/// Note: All enums automatically extend the Enum class. They are also sealed,
/// meaning they cannot be subclassed, implemented, mixed in, or otherwise
/// explicitly instantiated.
///
/// Abstract classes and mixins can explicitly implement or extend Enum,
/// but unless they are then implemented by or mixed into an enum declaration,
/// no objects can actually implement the type of that class or mixin.

/// To declare a simple enumerated type, use the 'enum' keyword and list the
/// values you want to be enumerated:
enum ColorList { red, green, blue, white, black, yellow, purple }

/// ENHANCED ENUMS ::
/// Dart also allows enum declarations to declare classes with fields, methods,
/// and const constructors which are limited to a fixed number
/// of known constant instances.
///
/// To declare an enhanced enum, follow a syntax similar to normal classes,
/// but with a few extra requirements:
/// 1. Instance variables must be final, including those added by mixins.
/// 2. All generative constructors must be constant.
/// 3. Factory constructors can only return one of the fixed,
/// known enum instances.
/// 4. No other class can be extended as Enum is automatically extended.
/// 5. There cannot be overrides for index, hashCode, the equality operator ==.
/// 6. A member named values cannot be declared in an enum, as it would
/// conflict with the automatically generated static values getter.
/// 7. All instances of the enum must be declared in the beginning of the
/// declaration, and there must be at least one instance declared.
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}
