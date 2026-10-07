void main() {
  // ============================================================
  // ASSIGNING NON-CONSTANT TO CONSTANT (NOT ALLOWED)
  // ============================================================

  // `final` values are determined at RUNTIME.
  // `const` values must be known at COMPILE TIME.
  //
  // Because `final` is not known at compile time,
  // we CANNOT assign a `final` variable to a `const` variable.

  final int age = 10;

  print('Final age: $age');

  // ❌ Compile error:
  // Const variables must be initialized with a constant value.
  // const int age2 = age;


  // ============================================================
  // ASSIGNING CONSTANT TO FINAL OR VAR (ALLOWED)
  // ============================================================

  // A `const` value is already known at compile time.
  // Since it is known, we CAN assign it to:
  // 1. A `final` variable (gets initialized once)
  // 2. A `var` variable (can be reassigned later)

  const int maxSpeed = 120;

  // ✅ Assigning const to final:
  final int speedLimit = maxSpeed;

  // ✅ Assigning const to var:
  var currentSpeed = maxSpeed;

  print('Speed Limit (final): $speedLimit');
  print('Current Speed (var): $currentSpeed');

  // `currentSpeed` is a `var`, so we can change it:
  currentSpeed = 100;
  print('Updated Speed: $currentSpeed');


  // ============================================================
  // CONSTANT EXPRESSIONS
  // ============================================================

  // A `const` variable can ONLY be initialized with a
  // "constant expression" (literals or other const variables).

  const int a = 10;
  const int b = 20;

  // ✅ Both 'a' and 'b' are compile-time constants:
  const int total = a + b;

  print('Total: $total');

  // If even one operand is NOT a compile-time constant,
  // it CANNOT be const:
  final int c = 30;
  // const int invalidTotal = a + c; // ❌ Error: 'c' is not a constant
  final int validTotal = a + c;     // ✅ Allowed with final
  print('Valid Total: $validTotal');
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// const  → Must be known at compile time.
// final  → Known at runtime.
//
// Rule:
// const  ---> can be assigned to ---> final  ✅
// const  ---> can be assigned to ---> var    ✅
//
// final  ---> CANNOT be assigned to ---> const ❌
// var    ---> CANNOT be assigned to ---> const ❌
//
// Think of it like water:
// Const is already frozen (set in stone at compile time).
// You can put frozen ice into a bucket (final/var).
// But you cannot freeze running water without freezing time first!
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. Can we assign a `final` variable to a `const` variable?
//
// Answer:
// No.
//
// Example:
// final age = 10;
// const age2 = age; // ❌ Compile Error
//
// Reason:
// `const` variables require a compile-time constant value.
// `final` variables are evaluated at runtime, so the compiler
// does not guarantee their value at compile time.
//
//
//
// 2. Can we assign a `const` variable to a `final` or `var` variable?
//
// Answer:
// Yes.
//
// Example:
// const maxUsers = 100;
// final limit = maxUsers; // ✅
// var active = limit;     // ✅
//
// A compile-time constant is valid everywhere.
//
//
//
// 3. What is a "constant expression" in Dart?
//
// Answer:
// A constant expression is an expression whose value can be
// completely evaluated at compile time.
//
// Examples of constant expressions:
// - Number, string, or boolean literals (e.g. 10, 'hello', true)
// - Operations between constants (e.g. const a = 2 + 3;)
// - Const collections (e.g. const [1, 2, 3])
//
//
//
// 4. What error does Dart show when assigning a non-const to a const?
//
// Answer:
// Dart static analysis error:
// "Const variables must be initialized with a constant value."
//
//
//
// 5. Why does Dart enforce this rule so strictly?
//
// Answer:
// Dart optimizes memory using canonicalization (memory sharing)
// for `const` values. The compiler must know the exact value
// before generating the application bundle.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// Const can flow DOWN to final and var:
// const  ➡️  final / var  (ALLOWED ✅)
//
// Non-const CANNOT flow UP to const:
// final / var  ➡️  const  (FORBIDDEN ❌)