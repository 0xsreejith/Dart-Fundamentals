void main() {
  // ============================================================
  // BOOLEANS: STRICT TRUTHINESS IN DART (bool)
  // ============================================================

  // In Dart, the `bool` type represents boolean values.
  // There are ONLY TWO boolean objects: `true` and `false`.


  // ============================================================
  // 1. BASIC BOOLEANS
  // ============================================================

  bool isOnline = true;
  bool hasSubscription = false;

  print('Is Online: $isOnline');
  print('Has Subscription: $hasSubscription');


  // ============================================================
  // 2. NO "TRUTHY" OR "FALSY" VALUES IN DART!
  // ============================================================

  // In languages like JavaScript or Python:
  // - 0, "", null, undefined are treated as "falsy"
  // - 1, "hello", [1] are treated as "truthy"
  //
  // DART REJECTS THIS ENTIRELY!
  // In Dart, conditions in `if` statements MUST have the static type `bool`.

  int itemsInCart = 0;

  // ❌ Compile error in Dart (Allowed in JS/Python, but NOT Dart):
  // if (itemsInCart) {
  //   print('Cart has items');
  // }

  // ✅ In Dart, you MUST write an explicit boolean expression:
  if (itemsInCart > 0) {
    print('Cart has items');
  } else {
    print('Cart is empty');
  }

  String userInput = '';

  // ❌ Compile error:
  // if (userInput) { ... }

  // ✅ Must check explicitly:
  if (userInput.isNotEmpty) {
    print('User entered: $userInput');
  } else {
    print('Input is empty');
  }


  // ============================================================
  // 3. NULLABLE BOOLEANS (bool?)
  // ============================================================

  // A `bool?` can have 3 possible values:
  // `true`, `false`, or `null`.
  //
  // Because it can be `null`, you CANNOT put it directly into an `if`:

  bool? isVerified; // null by default

  // ❌ Compile error:
  // A nullable expression can't be used as a condition.
  // if (isVerified) { ... }

  // ✅ Option 1: Compare directly with true
  if (isVerified == true) {
    print('User is verified');
  } else {
    print('User is NOT verified or status unknown');
  }

  // ✅ Option 2: Use null coalescing (?? false)
  if (isVerified ?? false) {
    print('Verified');
  }


  // ============================================================
  // 4. LOGICAL OPERATORS & SHORT-CIRCUITING
  // ============================================================

  // Logical AND (&&): Both must be true
  bool hasWifi = true;
  bool hasMobileData = false;

  bool canStream4K = hasWifi && hasMobileData;
  print('Can Stream 4K (both true?): $canStream4K');

  // Logical OR (||): At least one must be true
  // Note: If the first operand is true, Dart short-circuits and skips the second.
  bool hasConnection = checkHasConnection(hasWifi, hasMobileData);
  print('Has Connection (at least one?): $hasConnection');

  // Logical NOT (!): Inverts the boolean
  bool isOffline = !hasConnection;
  print('Is Offline: $isOffline');
}

bool checkHasConnection(bool wifi, bool mobile) {
  return wifi || mobile;
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// In JavaScript/Python:
// `if (0)` or `if ("")` compiles.
//
// In Dart:
// Only `bool` values (`true` or `false`) are accepted in conditions!
//
// Dart protects you from unintentional bugs caused by truthy/falsy coercion.
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. Does Dart support "truthy" and "falsy" values?
//
// Answer:
// No. Dart has strict boolean type checking. Only values of type
// `bool` (`true` and `false`) can be used as conditions in `if`
// statements or conditional expressions.
//
//
//
// 2. What happens if you pass an integer or string into an `if` condition?
//
// Answer:
// Dart generates a compile-time error:
// "Conditions must have a static type of 'bool'."
//
//
//
// 3. Can a boolean variable be `null` in Dart?
//
// Answer:
// Standard `bool` cannot be null due to sound null safety.
// However, a nullable boolean declared as `bool?` can be `null`.
// A `bool?` cannot be used directly in an `if` statement without
// checking `== true` or using `?? false`.
//
//
//
// 4. How do you safely check a nullable `bool?` in an `if` statement?
//
// Answer:
// Either use:
// if (flag == true) { ... }
// or:
// if (flag ?? false) { ... }
//
//
//
// 5. What is short-circuit evaluation in Dart?
//
// Answer:
// - In `a && b`, if `a` is false, `b` is never evaluated because the
//   overall result is already guaranteed to be false.
// - In `a || b`, if `a` is true, `b` is never evaluated because the
//   overall result is already guaranteed to be true.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// Dart bool is 100% strict:
// Only `true` is true.
// Only `false` is false.
// 0, "", null, and undefined are NEVER booleans in Dart!
