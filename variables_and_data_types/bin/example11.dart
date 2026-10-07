void main() {
  // ============================================================
  // SOUND NULL SAFETY & NULLABLE DATA TYPES
  // ============================================================

  // Dart features SOUND NULL SAFETY.
  // By default, variables CANNOT be null.
  //
  // If you want a variable to be able to hold `null`,
  // you must explicitly add a question mark `?` to its type.


  // ============================================================
  // 1. NON-NULLABLE BY DEFAULT
  // ============================================================

  String firstName = 'John';
  print('First name: $firstName');

  // ❌ Compile error: A value of type 'Null' can't be assigned
  // to a variable of type 'String'.
  // firstName = null;


  // ============================================================
  // 2. NULLABLE TYPES (Type?)
  // ============================================================

  // Adding `?` makes the type nullable:
  String? middleName; // Initialized to null by default
  print('Middle name: $middleName'); // null

  middleName = 'Robert'; // ✅ Allowed
  print('Middle name updated: $middleName');

  middleName = null;     // ✅ Allowed to set back to null


  // ============================================================
  // 3. NULL-AWARE MEMBER ACCESS OPERATOR (?.)
  // ============================================================

  // If you call a method on a nullable variable without checking,
  // Dart stops you at compile time:
  // print(middleName.length); // ❌ Compile error!

  // ✅ Use `?.`: If middleName is null, it evaluates to null
  // instead of crashing:
  print('Length via ?.: ${middleName?.length}'); // null (No crash!)


  // ============================================================
  // 4. IF-NULL / FALLBACK OPERATOR (??)
  // ============================================================

  // `??` provides a default value when the expression on the left is null:
  String displayName = middleName ?? 'No Middle Name';
  print('Display name: $displayName'); // 'No Middle Name'


  // ============================================================
  // 5. NULL-AWARE ASSIGNMENT OPERATOR (??=)
  // ============================================================

  // `??=` assigns a value ONLY IF the variable is currently null:
  String? nickname1;
  nickname1 ??= 'Johnny'; // nickname1 was null, so it gets assigned 'Johnny'
  print('Nickname 1: $nickname1'); // 'Johnny'

  // Demonstrating ??= when variable already has a value:
  String? nickname2 = fetchNullableCity(returnNull: false);
  nickname2 ??= 'Fallback'; // Skips assignment because nickname2 is not null
  print('Nickname 2 unchanged: $nickname2'); // 'Tokyo'


  // ============================================================
  // 6. NULL ASSERTION OPERATOR (!) - THE BANG OPERATOR
  // ============================================================

  // `!` tells the Dart compiler:
  // "I know this variable is nullable, but I PROMISE it is NOT null right now."
  String? city = fetchNullableCity(returnNull: false);

  // Dart allows this cast because of the `!` assertion:
  String guaranteedCity = city!;
  print('Guaranteed City: $guaranteedCity');

  // ⚠️ DANGER: If the value actually IS null at runtime,
  // Dart throws an exception:
  // String? nullCity = fetchNullableCity(returnNull: true);
  // String broken = nullCity!; // ❌ Throws runtime 'Null check operator used on a null value'


  // ============================================================
  // 7. FLOW-BASED TYPE PROMOTION
  // ============================================================

  // When you check that a nullable variable is not null,
  // Dart automatically PROMOTES it to non-nullable inside that block!

  String? email = fetchNullableEmail();

  if (email != null) {
    // Inside this block, `email` is promoted from `String?` to `String`!
    // No `?.` or `!` is needed:
    print('Email length: ${email.length}'); // ✅ Statically safe!
  } else {
    print('No email provided.');
  }
}

// Helper functions returning nullable types:
String? fetchNullableCity({required bool returnNull}) {
  return returnNull ? null : 'Tokyo';
}

String? fetchNullableEmail() {
  return 'support@example.com';
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// Operator | Name                 | What it does
// ---------|----------------------|---------------------------------------
// `?`      | Nullable Type Marker | Allows a variable to hold null
// `?.`     | Null-aware Access    | Calls method safely; returns null if null
// `??`     | If-Null Fallback     | Uses right side if left side is null
// `??=`    | Null-aware Assign    | Assigns only if currently null
// `!`      | Null Assertion       | Forces compiler to treat as non-null
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. What is Sound Null Safety in Dart?
//
// Answer:
// Sound Null Safety ensures that variables cannot contain `null`
// unless you explicitly declare them as nullable.
// "Sound" means the guarantee is backed by the compiler and runtime;
// a non-nullable type can NEVER be null, preventing null reference
// exceptions at runtime.
//
//
//
// 2. What is the difference between `int` and `int?`?
//
// Answer:
// - `int`: Can only hold an integer (e.g. 10). It can never be null.
// - `int?`: Can hold an integer OR the value `null`.
//
//
//
// 3. Explain how `??` and `??=` differ.
//
// Answer:
// - `a ?? b`: Returns `b` if `a` is null, but does not modify `a`.
// - `a ??= b`: Assigns `b` into `a` if `a` is null, modifying `a`.
//
//
//
// 4. What is the risk of using the bang operator `!`?
//
// Answer:
// The bang operator `!` bypasses compile-time null safety by asserting
// that the value is non-null. If the value happens to be null at runtime,
// Dart throws an unhandled `Null check operator used on a null value` error.
// It should only be used when 100% certain the value is non-null.
//
//
//
// 5. What is flow analysis / type promotion in Dart null safety?
//
// Answer:
// Dart's compiler analyzes code flow. If you check `if (x != null)`,
// Dart promotes `x` from its nullable type (e.g. `String?`) to its
// non-nullable type (`String`) for all code executed inside that scope.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// Type?   ➡️ "I might be null"
// ?.      ➡️ "Access me only if I'm not null"
// ??      ➡️ "Give me a backup value if I'm null"
// ??=     ➡️ "Fill me up only if I'm empty (null)"
// !       ➡️ "Trust me, I'm NOT null!" (Use with caution!)
