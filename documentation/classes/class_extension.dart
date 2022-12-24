/// Use 'extends' to create a subclass, and 'super' to refer to the superclass.
///
/// Subclasses can override instance methods(including operators), getters,
/// and setters. You can use the @override annotation to indicate that you
/// are intentionally overriding a member.
class Television {
  set contrast(int value) => value;

  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }

  void _illuminateDisplay() => print("$this: Illuminating display");

  void _activateIrSensor() => print("$this: Activating IR Sensor");
}

/// An overriding method declaration must match the method (or methods)
/// that it overrides in several ways:
/// [1] The return type must be the same type as (or a subtype of)
/// the overridden method's return type.
/// [2] Argument types must be the same type as (or a supertype of)
/// the overridden method's argument types.
/// [3] If the overridden method accepts n positional parameters, then
/// the overriding method must also accept n positional parameters.
/// [4] A generic method can't override a non-generic one,
/// and a non-generic method can't override a generic one.
///
/// Sometimes you might want to narrow the type of a method parameter or an
/// instance variable. This violates the normal rules, and it's similar to a
/// downcast in that it can cause a type error at runtime. Still, narrowing the
/// type is possible if the code can guarantee that a type error won't occur.
/// In this case, you can use the covariant keyword in a parameter declaration
///
/// WARNING: If you override ==, you should also override Object's hashCode getter.
class SmartTelevision extends Television {
  @override
  set contrast(num value) {
    super.contrast = value.toInt();
  }

  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }

  void _bootNetworkInterface() => print("$this: Booting network interface");

  void _initializeMemory() => print("$this: Initialize memory");

  void _upgradeApps() => print("$this: Upgrading Apps");
}

void main() {
  var television = Television();
  television.turnOn();
  print("");
  SmartTelevision().turnOn();
}

/// noSuchMethod()::
/// To detect or react whenever code attempts to use a non-existent method or
/// instance variable, you can override noSuchMethod().
///
/// You can't invoke an unimplemented method unless one of the following is true:
/// - The receiver has the static type 'dynamic'
/// - The receiver has a static type that defines the unimplemented method
/// (abstract is OK), and the dynamic type of the receiver has an implementation
/// of noSuchMethod() that's different from the one in class Object.
class A {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ${invocation.memberName}');
  }
}
