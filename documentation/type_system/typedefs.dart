// A type alias - often called a typedef because it's declared with the keyword
// 'typedef' - is a concise way to refer to a type
typedef IntList = List<int>;

IntList i1 = [1, 2, 3];

/// A type alias can have type parameters
typedef ListMapper<X> = Map<X, List<X>>;

Map<String, List<String>> m1 = {}; // Verbose.
ListMapper<String> m2 = {}; // Same thing but shorter and clearer.

/// It is recommended to use inline function types instead of typedefs for
/// functions, in most situations. However, function typedefs can still be useful.
typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  print(sort is Compare<int>); // True!
}
