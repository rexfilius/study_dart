/// REDIRECTING CONSTRUCTORS::
/// Sometimes a constructor's only purpose is to redirect to another
/// constructor in the same class. A redirecting constructor's body is empty,
/// with the constructor call (using 'this' instead of the class name)
/// appearing after a colon (:).
class Babies {
  double x, y;

  // The main constructor for this class.
  Babies(this.x, this.y);

  // Delegates to the main constructor.
  Babies.alongXAxis(double x) : this(x, 0);
}

/// CONSTANT CONSTRUCTORS::
/// If your class produces objects that never change, you can make these
/// objects compile-time constants. To do this, define a const constructor
/// and make sure that all instance variables are final.
/// Constant constructors don't always create constants.
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

/// FACTORY CONSTRUCTORS::
/// Use the factory keyword when implementing a constructor that doesn't always
/// create a new instance of its class. e.g. a factory constructor might return
/// an instance from a cache, or it might return an instance of a subtype.
///
/// - Another use case for factory constructors is initializing a final
/// variable using logic that can't be handled in the initializer list.
/// - Tip: Another way to handle late initialization of a final variable is
/// to use late final (carefully!).
/// - Note: Factory constructors have no access to 'this'
class Logged {
  final String name;
  bool mute = false;

  // _cache is library-private
  static final Map<String, Logged> _cache = <String, Logged>{};

  // returns objects from a cache
  factory Logged(String name) {
    return _cache.putIfAbsent(name, () => Logged._internal(name));
  }

  // initializes a final variable from a JSON object.
  factory Logged.fromJson(Map<String, Object> json) {
    return Logged(json['name'].toString());
  }

  Logged._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

void main() {
  // Invoke a factory constructor just like you would any other constructor
  var logger = Logged('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logged.fromJson(logMap);
  print(loggerJson);
}

/// CONSTRUCTOR SUMMARY::
/// Since there are so many ways that constructors can vary,
/// here’s a brief comparison. Constructors can be:
/// 1. Forwarding or non-forwarding
/// 2. Named or unnamed
/// 3. Generative or factory
/// 4. Constant or not constant
