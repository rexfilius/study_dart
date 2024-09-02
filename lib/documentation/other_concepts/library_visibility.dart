/// The 'import' and 'library' directives can help you create a modular and
/// shareable code base. Libraries not only provide APIs, but are a unit of
/// privacy: identifiers that start with an underscore are visible only inside
/// the library. "Every Dart app is a library", even if it doesn't use
/// a library directive. Libraries can be distributed using packages.
///
/// Use 'import' to specify how a namespace from one library is used in the
/// scope of another library.
import 'dart:math';

void main() {
  var dex = pi * 3;
  print(dex);
}

/// The only required argument to import is a URI specifying the library.
/// For built-in libraries, the URI has the special 'dart:scheme'.
/// For other libraries, you can use a file system path or the 'package:scheme'
/// The package:scheme specifies libraries provided by a package manager
/// such as the pub tool.
///
/// => import 'package:test/test.dart';

/// If you import two libraries that have conflicting identifiers, then you can
/// specify a prefix for one or both libraries. For example, if library1 and
/// library2 both have an Element class, then you might have code like this:
///
/// => import 'package:lib1/lib1.dart';
/// => import 'package:lib2/lib2.dart' as lib2;
///
/// => Element element1 = Element(); // Uses Element from lib1.
///
/// => lib2.Element element2 = lib2.Element(); // Uses Element from lib2.

/// If you want to use only part of a library, you can selectively import
/// the library. For example:
///
/// => import 'package:lib1/lib1.dart' show foo; // Import only foo.
///
/// => import 'package:lib2/lib2.dart' hide foo; // Import all names EXCEPT foo.
