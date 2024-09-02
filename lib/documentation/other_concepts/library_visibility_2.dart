/// Deferred loading (also called lazy loading) allows a web app to load a
/// library on demand, if and when the library is needed. Here are some cases
/// when you might use deferred loading:
/// -> To reduce a web app's initial startup time.
/// -> To perform A/B testing - trying out alternative implementations of an
/// algorithm, for example.
/// -> To load rarely used functionality, such as optional screens and dialogs.
///
/// Only dart2js supports deferred loading. Flutter, the Dart VM, and dartdevc
/// don't support deferred loading.

/// Implementing libraries:::
/// See "Create Library Packages" in Dart docs for advice on how to implement
/// a library package, including:
/// - How to organize library source code.
/// - How to use the export directive.
/// - When to use the part directive.
/// - When to use the library directive.
/// - How to use conditional imports and exports to implement a library
/// that supports multiple platforms.
