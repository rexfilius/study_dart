/// Mixins are a way of reusing a class code in multiple class hierarchies.
/// To use a mixin, use the 'with' keyword followed by one or more mixin names.
/// To implement a mixin, create a class that extends Object and declares
/// no constructors. Unless you want your mixin to be usable as a regular class,
/// use the 'mixin' keyword instead of 'class'
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Musician extends Performer with Musical {}

class Performer {}

class Maestro extends ChadMan with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

class ChadMan {
  String name = "";
}

mixin Aggressive {}

mixin Demented {}
