/// Initializer list::
/// Besides invoking a superclass constructor, you can also initialize
/// instance variables before the constructor body runs.
/// Separate initializers with commas.
class Boys {
  String? name;
  String? team;

  Boys(this.name, this.team);

  /// Initializer list sets instance variables before the constructor body runs.
  /// Warning: The right-hand side of an initializer doesn't have access to this
  Boys.fromJson(Map<String, String> json)
      : name = json['Joe']!,
        team = json['0']! {
    print("In Boys.fromJson(): ($name $team)");
  }

  /// During development, you can validate inputs by using assert
  /// in the initializer list.
  Boys.withAssert(this.name, this.team) : assert(name != null) {
    print('In Boys.withAssert(): ($name, $team)');
  }
}

class Group {
  final String town;
  final String city;
  final String band;
  final String groupName;

  /// Initializer lists are handy when setting up final fields
  Group(String bandName, String townName, String cityName)
      : band = bandName,
        town = townName,
        city = cityName,
        groupName = "Band: $bandName. Town: $townName. City: $cityName";
}

void main() {
  var g = Group("Metal", "Ikeja", "Lagos");
  print(g.groupName);
}
