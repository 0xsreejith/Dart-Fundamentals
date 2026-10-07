void main() {
  // ============================================================
  // VAR vs DYNAMIC vs OBJECT
  // ============================================================

  // These three keywords are often confused by beginners,
  // but they have completely different behaviors:
  //
  // 1. `var`     → Statically typed (type inferred & locked)
  // 2. `dynamic` → Static type checking is DISABLED
  // 3. `Object`  → The root of all types (statically type safe)


  // ============================================================
  // 1. `var` (STATIC TYPE INFERRED & LOCKED)
  // ============================================================

  var a = 'Hello'; // Inferred as String

  a = 'World'; // ✅ Allowed (same type)
  print('a is: $a');

  // ❌ Not allowed: Type is locked to String!
  // a = 123;


  // ============================================================
  // 2. `dynamic` (TYPE CHECKING DISABLED)
  // ============================================================

  // With `dynamic`, you tell Dart:
  // "Do not check types for this variable at compile time."
  //
  // A dynamic variable can hold ANY value, and its type can
  // change to any other type at ANY time.

  dynamic b = 'Hello';
  print('b is: $b (${b.runtimeType})');

  b = 123; // ✅ Allowed! Changed from String to int
  print('b is now: $b (${b.runtimeType})');

  b = true; // ✅ Allowed! Changed to bool
  print('b is now: $b (${b.runtimeType})');

  b = [1, 2, 3]; // ✅ Allowed! Changed to List<int>
  print('b is now: $b (${b.runtimeType})');

  // ⚠️ THE BIG DANGER WITH `dynamic`:
  // Dart does NOT check if methods exist at compile time!
  //
  // dynamic x = 'Hello';
  // x.someNonExistentMethod();
  // ❌ Compiles without errors, but CRASHES at runtime with
  //    NoSuchMethodError!


  // ============================================================
  // 3. `Object` (ROOT OF TYPE HIERARCHY, TYPE-SAFE)
  // ============================================================

  // In Dart, EVERYTHING is an Object (except null).
  // `Object` is the top type for all non-nullable values.
  //
  // Unlike `dynamic`, `Object` is 100% TYPE-SAFE at compile time!

  Object c = 'Hello';
  print('c is: $c (${c.runtimeType})');

  c = 456; // ✅ Allowed! (int is an Object)
  print('c is now: $c (${c.runtimeType})');

  // But you can ONLY call methods that belong to `Object`:
  print(c.toString()); // ✅ Object has toString()
  print(c.hashCode);   // ✅ Object has hashCode

  // ❌ Compile error: Object does not have .length property!
  // Object str = 'Hello';
  // print(str.length);

  // ✅ To use String methods on an Object, you must verify the type:
  Object message = 'Hello Dart';
  if (message is String) {
    // Dart automatically PROMOTES `message` to String here!
    print('Message length: ${message.length}'); // ✅ Works safely!
  }
}


// ============================================================
// COMPARISON TABLE
// ============================================================
//
// Feature          | var               | dynamic           | Object
// -----------------|-------------------|-------------------|------------------
// Type checking    | Compile-time      | None (Runtime)    | Compile-time
// Can change type? | NO (Locked)       | YES               | YES (to any Object)
// Access methods?  | Only its type     | Anything (unsafe) | Only Object methods
// Type Safe?       | YES               | NO                | YES
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. What is the difference between `var`, `dynamic`, and `Object`?
//
// Answer:
// - `var`: Dart infers the type at compile time and locks it.
//   It cannot be reassigned to a different type.
// - `dynamic`: Static type checking is bypassed. It can hold any
//   type, change types anytime, and calls methods dynamically at runtime.
// - `Object`: The superclass of all non-null types. It can hold any
//   object, but is statically type-checked. You can only call Object
//   methods unless you check or cast the type.
//
//
//
// 2. Why is `dynamic` considered dangerous in Dart?
//
// Answer:
// Because the compiler does not check method calls or properties
// on `dynamic` variables. If you make a typo or call a method that
// doesn't exist, the program crashes at runtime with `NoSuchMethodError`.
//
//
//
// 3. Why is `Object` safer than `dynamic`?
//
// Answer:
// `Object` retains compile-time type safety. The compiler prevents
// you from calling arbitrary methods. You must prove the type
// using `is` before calling type-specific methods.
//
//
//
// 4. What happens when you declare `var x;` without assigning a value?
//
// Answer:
// If you declare `var x;` without an initial value, Dart infers
// its type as `dynamic`!
// Therefore, `x` can later hold any type.
//
//
//
// 5. What is the root class of all non-nullable types in Dart?
//
// Answer:
// `Object`.
// If nullable types are included, the top type of the entire
// hierarchy is `Object?`.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// var     ➡️  "Lock my type at declaration." (Safe)
// dynamic ➡️  "Turn off all safety rules."   (Dangerous)
// Object  ➡️  "I can be anything, but check my ID first." (Safe)
