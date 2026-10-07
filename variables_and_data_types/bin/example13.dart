void main() {
  // ============================================================
  // TYPE CHECKING & TYPE CASTING: is, is!, AND as
  // ============================================================

  // In Dart, you can inspect and change how the compiler sees
  // an object's type using three operators:
  // 1. `is`  → Check if an object is of a specific type (Returns bool)
  // 2. `is!` → Check if an object is NOT of a specific type
  // 3. `as`  → Explicitly cast an object to a specific type


  // ============================================================
  // 1. TYPE CHECKING (is)
  // ============================================================

  Object data = 'Flutter Developer';

  if (data is String) {
    print('data is indeed a String!');
  }

  if (data is int) {
    print('data is an int');
  } else {
    print('data is NOT an int');
  }


  // ============================================================
  // 2. NEGATIVE TYPE CHECKING (is!)
  // ============================================================

  // `is!` is shorthand for `!(data is int)`:
  if (data is! int) {
    print('Confirmed: data is not an integer');
  }


  // ============================================================
  // 3. SMART TYPE PROMOTION (AUTOMATIC CASTING)
  // ============================================================

  // Dart's compiler is smart! When you verify a type with `is`,
  // Dart automatically PROMOTES the variable to that type
  // inside the block.
  //
  // You do NOT need to manually cast it!

  Object greeting = 'Hello Dart';

  if (greeting is String) {
    // Inside here, Dart treats `greeting` as `String`, NOT `Object`.
    // You can access String methods directly:
    print('Length: ${greeting.length}');
    print('Uppercase: ${greeting.toUpperCase()}');
  }


  // ============================================================
  // 4. EXPLICIT TYPE CASTING (as)
  // ============================================================

  // The `as` operator forces the compiler to treat an expression
  // as a specific type:

  Object numberObject = 42;

  // ✅ Successful cast:
  int number = numberObject as int;
  print('Successfully casted number: $number');

  // ⚠️ THE DANGER OF `as`:
  // If the object is NOT actually that type, Dart throws a runtime
  // `TypeError` and crashes your application!

  Object textObject = 'Hello';

  // ❌ RUNTIME ERROR: type 'String' is not a subtype of type 'int' in type cast
  // int broken = textObject as int;

  // ✅ SAFE APPROACH: Always check with `is` first, or let type promotion do the work!
  if (textObject is int) {
    print(textObject + 10);
  } else {
    print('textObject is not an int, skipping cast safely.');
  }
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// Operator | Meaning           | Return Value | Safety
// ---------|-------------------|--------------|---------------------
// `is`     | Is it this type?  | `bool`       | 100% Safe (No crash)
// `is!`    | Is it not type?   | `bool`       | 100% Safe (No crash)
// `as`     | Force cast type   | Casted value | Risky (Can crash!)
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. What is the difference between `is` and `as` in Dart?
//
// Answer:
// - `is`: A boolean test that checks whether an object is an instance
//   of a given type without throwing any exceptions.
// - `as`: An explicit type cast that forces Dart to treat an object
//   as a given type. If the cast is invalid, it throws a runtime `TypeError`.
//
//
//
// 2. What is Type Promotion (Smart Cast) in Dart?
//
// Answer:
// Type promotion is an automatic optimization by the Dart compiler.
// When an `is` check succeeds (e.g. `if (x is String)`), Dart automatically
// promotes `x` to `String` inside the conditional block, so you don't
// need an explicit `as` cast.
//
//
//
// 3. What exception is thrown when an `as` cast fails at runtime?
//
// Answer:
// Dart throws a `TypeError` (e.g. `type 'X' is not a subtype of type 'Y' in type cast`).
//
//
//
// 4. What does the `is!` operator do?
//
// Answer:
// It checks for the negation of a type.
// `x is! String` is equivalent to `!(x is String)`.
//
//
//
// 5. Why should you avoid using `as` when possible?
//
// Answer:
// Using `as` disables compile-time type safety for that conversion
// and shifts the burden to runtime. If assumptions change or unexpected
// data arrives, `as` will crash the application. Using `is` with type
// promotion is always safer.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// `is`  ➡️ "Ask permission first." (Safe ✅)
// `as`  ➡️ "Demand forgiveness later." (Risky ❌ - crashes on mismatch)
// Always prefer `is` + Type Promotion over `as`!
