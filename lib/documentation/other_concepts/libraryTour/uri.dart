/// LIBRARY TOUR
/// The Uri class provides functions to encode and decode strings for use in
/// URIs. These functions handle characters that are special for URIs, such as
/// '&' and '=' The Uri class also parses and exposes the components of a
/// URI - host, port, scheme, and so on.
void main() {
  // To encode and decode characters except those with special meaning in a URI
  // (such as /, :, &, #), use the encodeFull() and decodeFull() methods.
  // These methods are good for encoding or decoding a fully qualified URI,
  // leaving intact special URI characters.
  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);

  // To encode and decode all of a string's characters that have special
  // meaning in a URI, including (but not limited to) /, &, and :,
  // use the encodeComponent() and decodeComponent() methods.
  var uri2 = 'https://example.org/api?foo=some message';

  var encoded2 = Uri.encodeComponent(uri2);
  assert(encoded2 == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

  var decoded2 = Uri.decodeComponent(encoded2);
  assert(uri2 == decoded2);

  // If you have a Uri object or a URI string,
  // you can get its parts using Uri fields such as path.
  // To create a Uri from a string, use the parse() static method:
  var uri3 = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri3.scheme == 'https');
  assert(uri3.host == 'example.org');
  assert(uri3.path == '/foo/bar');
  assert(uri3.fragment == 'frag');
  assert(uri3.origin == 'https://example.org:8080');

  // You can build up a URI from individual parts using the Uri() constructor:
  var uri4 = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
  );
  assert(uri4.toString() == 'https://example.org/foo/bar#frag');
}
