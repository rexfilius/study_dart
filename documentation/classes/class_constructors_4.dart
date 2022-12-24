/// To avoid having to manually pass each parameter into the super invocation
/// of a constructor, you can use super-initializer parameters to forward
/// parameters to the specified or default superclass constructor.
/// This feature can't be used with redirecting constructors.
/// Super-initializer parameters have similar syntax and semantics to
/// "initializing formal parameters"
class Planet {
  final String name;
  final double weight;

  Planet(this.name, this.weight);

  Planet.named({required this.name, required this.weight});

  @override
  String toString() {
    return "Planet(name:$name, weight:$weight)";
  }
}

class Venus extends Planet {
  final double location;

  Venus(super.name, super.weight, this.location);

  // Old Verbose style below
  //Venus(final String name, final double weight, this.location)
  //    : super(name, weight);

  /// Super-initializer parameters cannot be positional if the
  /// super-constructor invocation already has positional arguments,
  /// but they can always be named
  Venus.name({
    required super.weight,
    required this.location,
  }) : super.named(name: "Venus-2");

  @override
  String toString() {
    return "Venus(name:$name, weight:$weight, location:$location)";
  }
}

void main() {
  final exoPlanet = Planet("Pluto", 250);
  print(exoPlanet);

  final venus = Venus('Venus', 300, 4.1);
  print(venus);
}
