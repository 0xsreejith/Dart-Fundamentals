void main() {
  // ============================================================
  // MASTER SUMMARY: ALL DART DATA TYPES & TYPE HIERARCHY
  // ============================================================

  // Dart is an object-oriented, soundly typed language.
  // Everything you can place in a variable is an OBJECT,
  // and every object is an instance of a CLASS.


  // ============================================================
  // 1. ALL BUILT-IN DATA TYPES IN DART
  // ============================================================

  // 1. NUMBERS (int, double, num)
  const int wholeNumber = 10;
  const double decimalNumber = 10.5;
  const num generalNumber = 100; // Can be int or double

  print('1. Numbers: $wholeNumber, $decimalNumber, $generalNumber');

  // 2. STRINGS (String)
  const String greeting = 'Hello, Dart!';
  print('2. String: $greeting');

  // 3. BOOLEANS (bool)
  const bool isDartAwesome = true;
  print('3. Boolean: $isDartAwesome');

  // 4. LISTS (List<T> - Ordered group, duplicates allowed)
  const List<int> numbersList = [1, 2, 3];
  print('4. List: $numbersList');

  // 5. SETS (Set<T> - Unordered, unique items only)
  const Set<String> uniqueTags = {'flutter', 'dart', 'mobile'};
  print('5. Set: $uniqueTags');

  // 6. MAPS (Map<K, V> - Key-value pairs)
  const Map<String, int> scores = {'Alice': 100, 'Bob': 95};
  print('6. Map: $scores');

  // 7. RUNES (Unicode code points)
  final runes = Runes('Dart \u2764');
  print('7. Runes: ${String.fromCharCodes(runes)}');

  // 8. SYMBOLS (Symbol - represents an identifier or operator)
  // Symbols are compile-time constants prefixed with '#'
  const Symbol appSymbol = #myAppIdentifier;
  print('8. Symbol: $appSymbol');

  // 9. NULL (Null - the type of null value)
  const Null nothing = null;
  print('9. Null: $nothing');

  // 10. OBJECT (Object - top of non-nullable types)
  const Object rootObject = 'I am an Object';
  print('10. Object: $rootObject');

  // 11. DYNAMIC (dynamic - bypasses static type checks)
  dynamic flexible = 42;
  print('11. Dynamic: $flexible');


  // ============================================================
  // 2. THE DART TYPE HIERARCHY
  // ============================================================
  //
  //                     Object? (Top Type of Everything)
  //                    /       \
  //               Object        Null (Value: null)
  //              /  |   \
  //           num String bool (and List, Set, Map, etc.)
  //          /   \
  //       int    double
  //         \     /
  //          Never (Bottom Type - represents impossible values)
  //
  // ============================================================


  // ============================================================
  // 3. THE "Never" TYPE (BOTTOM TYPE)
  // ============================================================

  // `Never` is a type that has NO VALUES.
  // It indicates that an expression can NEVER successfully finish
  // (for instance, a function that always throws an exception).
  //
  // Example helper function below: throwError() returns Never.
  print('Never type: represents functions that never return normally.');
}

// Function returning `Never`:
Never throwError(String message) {
  throw Exception(message);
}


// ============================================================
// MASTER KEYWORD CHEAT SHEET
// ============================================================
//
// Keyword | When it is set? | Can reassign? | Object mutable? | Type Safe?
// --------|-----------------|---------------|-----------------|-----------
// var     | Declaration     | YES ✅        | Depends on type | YES (locked)
// final   | Runtime (once)  | NO ❌         | YES (by default)| YES
// const   | Compile-time    | NO ❌         | NO (Immutable)  | YES
// late    | Lazy (on use)   | YES (or once) | Depends on type | YES
// dynamic | Any time        | YES ✅        | YES             | NO ❌
// ============================================================


// ============================================================
// MASTER INTERVIEW QUESTIONS
// ============================================================
//
// 1. What are all the core data types provided by Dart?
//
// Answer:
// Dart provides:
// - `int`, `double`, `num` (Numbers)
// - `String` (Textual data)
// - `bool` (Boolean true/false)
// - `List` (Ordered collections)
// - `Set` (Unique collections)
// - `Map` (Key-value pairs)
// - `Runes` (Unicode code points)
// - `Symbol` (Opaque identifier used in reflection)
// - `Null` (Represents null)
// - `Object` / `Object?` (Root types)
// - `Never` (Bottom type)
//
//
//
// 2. What is the difference between `Object?` and `Object`?
//
// Answer:
// - `Object?`: The universal top type of Dart. Every type in Dart
//   is a subtype of `Object?`, including `Null`.
// - `Object`: The top type of all NON-NULLABLE values. It is the
//   superclass of all classes, but does not allow `null`.
//
//
//
// 3. What is the `Never` type in Dart?
//
// Answer:
// `Never` is the bottom type in Dart's type hierarchy. No object can
// ever have a runtime type of `Never`. It is used as the return type
// for functions that never return (e.g. functions that unconditionally
// throw an exception or enter an infinite loop).
//
//
//
// 4. What is a `Symbol` in Dart?
//
// Answer:
// A `Symbol` object represents an operator or identifier declared in
// a Dart program. They are written with `#` (e.g. `#myVar`) and are
// compile-time constants, commonly used in reflection and code generation.
//
//
//
// 5. What is the ultimate summary of `var`, `final`, `const`, `late`, and `dynamic`?
//
// Answer:
// - `var`: Infer the type once; reassignable; type-safe.
// - `final`: Set once at runtime; cannot reassign; object may mutate.
// - `const`: Known at compile-time; cannot reassign; object is deeply immutable.
// - `late`: Initialize lazily upon first use; non-nullable before initialization.
// - `dynamic`: Disable type checks; can hold any type; bypasses compiler safety.
//
//
//
// ============================================================
// ⭐ MASTER MEMORY TRICK
// ============================================================
//
// var     ➡️ "Flexible variable, locked type."
// final   ➡️ "Set once, runtime value."
// const   ➡️ "Compile-time rock, frozen forever."
// late    ➡️ "Initialize me when you actually need me."
// dynamic ➡️ "Wildcard — no rules, high risk."
// Object? ➡️ "The King of all types at the very top."
// Never   ➡️ "The floor of the type system that never returns."
