void main() {
  // ============================================================
  // TYPE INFERENCE (var) vs EXPLICIT TYPE ANNOTATION
  // ============================================================

  // Dart is a STATICALLY TYPED language.
  // Every variable has a specific type known at compile time.
  //
  // However, Dart supports TYPE INFERENCE:
  // When you don't write the type explicitly, Dart automatically
  // figures out (infers) the type based on the assigned value.


  // ------------------------------------------------------------
  // 1. INFERRED TYPES (Dart infers the type automatically)
  // ------------------------------------------------------------

  var age = 25;               // Dart infers `int`
  var price = 99.99;          // Dart infers `double`
  var username = 'Sreejith';  // Dart infers `String`
  var isLoggedIn = true;      // Dart infers `bool`

  print('Inferred age type: ${age.runtimeType}');
  print('Inferred price type: ${price.runtimeType}');
  print('Inferred username type: ${username.runtimeType}');
  print('Inferred isLoggedIn type: ${isLoggedIn.runtimeType}');


  // ------------------------------------------------------------
  // 2. EXPLICIT TYPES (You write the type manually)
  // ------------------------------------------------------------

  int explicitAge = 25;
  double explicitPrice = 99.99;
  String explicitUsername = 'Sreejith';
  bool explicitIsLoggedIn = true;

  print('Explicit age: $explicitAge');
  print('Explicit price: $explicitPrice');
  print('Explicit username: $explicitUsername');
  print('Explicit isLoggedIn: $explicitIsLoggedIn');


  // ============================================================
  // CRITICAL: TYPE INFERENCE IS NOT DYNAMIC TYPING!
  // ============================================================

  // In languages like JavaScript or Python, a variable can change
  // its type at runtime.
  //
  // IN DART, THAT IS NOT TRUE!
  // Once Dart infers a type for `var`, that type is LOCKED forever.

  var score = 100; // Dart locks the type as `int`

  score = 200; // ✅ Allowed (same type: int)
  print('Updated score: $score');

  // ❌ Compile error:
  // A value of type 'String' can't be assigned to a variable of type 'int'.
  // score = 'hundred';


  // ============================================================
  // TYPE INFERENCE WITH FINAL AND CONST
  // ============================================================

  // You do NOT need to write `final int` or `const String`.
  // Dart can infer types with `final` and `const` as well.

  // Inferred final & const:
  final country = 'India';     // Inferred as String
  const maxScore = 500;        // Inferred as int

  print('Country: $country (${country.runtimeType})');
  print('Max score: $maxScore (${maxScore.runtimeType})');

  // Explicit final & const (also completely valid):
  final String explicitCountry = 'India';
  const int explicitMaxScore = 500;

  print('Explicit Country: $explicitCountry');
  print('Explicit Max score: $explicitMaxScore');


  // ============================================================
  // WHEN TO USE VAR vs EXPLICIT TYPE
  // ============================================================

  // Dart Official Style Guide (Effective Dart):
  //
  // 1. DO use `var` for local variables when the type is OBVIOUS
  //    from the right-hand side.
  //    Example:
  //    var names = <String>[]; // Obvious it's List<String>
  //    var person = Person();  // Obvious it's Person
  //
  // 2. DO use explicit types when the type is NOT OBVIOUS,
  //    or when you want to be extra clear.
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// `var score = 10`  is identical in performance and safety
// to `int score = 10`.
//
// Both are 100% statically typed by the Dart compiler!
//
// The only difference is who writes the type:
// - Explicit: YOU write `int`
// - var:      DART infers `int`
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. What is type inference in Dart?
//
// Answer:
// Type inference is Dart's ability to automatically detect and
// assign the data type of a variable based on its initial value,
// without the developer having to write the type explicitly.
//
//
//
// 2. Does `var` make Dart dynamically typed?
//
// Answer:
// NO! Absolutely not.
// Dart is always statically typed. `var` only infers the static
// type once at compile time. After that, the variable cannot hold
// a value of any other type.
//
// Example:
// var count = 10;
// count = 'ten'; // ❌ Compile Error
//
//
//
// 3. What is the difference between `var name = 'John'` and `String name = 'John'`?
//
// Answer:
// There is NO difference in performance or runtime behavior!
// In both cases, `name` is a variable of type `String`.
// With `var`, the compiler figures out the type; with `String`,
// you specify it explicitly.
//
//
//
// 4. Can we declare `var` without initializing it immediately?
//
// Answer:
// Yes, BUT BE CAREFUL!
// If you declare `var` without initializing it:
//
// var x; // Inferred as `dynamic`!
// x = 10;
// x = 'hello'; // ✅ Allowed because x is `dynamic`!
//
// If you want static typing, ALWAYS initialize `var` immediately,
// or use an explicit type like `int x;`.
//
//
//
// 5. What does the Dart Style Guide (Effective Dart) recommend?
//
// Answer:
// Effective Dart recommends using `var` for local variables
// whenever the type is obvious from the initialization value,
// keeping code clean and readable.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// `var` with initial value  ➡️  Statically typed (type is locked)
// `var` without value       ➡️  Becomes `dynamic` (avoid this!)
// Explicit type (`int`, etc) ➡️  Statically typed (you specify it)
