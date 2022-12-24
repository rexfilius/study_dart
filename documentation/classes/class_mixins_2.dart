/// Sometimes you might want to restrict the types that can use a mixin.
/// e.g the mixin might depend on being able to invoke a method that the mixin
/// doesn't define. You can restrict a mixin's use by using the 'on' keyword
/// to specify the required superclass.
class MusicArtiste {
  // ...
}

mixin MusicalPerformer on MusicArtiste {
  // ...
}

class SingerDancer extends MusicArtiste with MusicalPerformer {
  // ...
}

/// Only classes that extend or implement the MusicArtiste class
/// can use the mixin MusicalPerformer.
/// Because SingerDancer extends MusicArtiste,
/// SingerDancer can mix in MusicalPerformer.
