void main() {
  // ============================================================
  // LATE
  // ============================================================

  // `late` tells Dart:
  //
  // "I will initialize this variable later."
  //
  // If we give `late` an initializer, that initializer runs
  // only when the variable is used for the first time.

  late final int myValue = 10;

  // `myValue` has not been initialized yet.
  // It gets initialized when we first use it here.

  print(myValue); // 10


  // ============================================================
  // LATE + FINAL
  // ============================================================

  // `final` means:
  // We can assign the variable only ONCE.
  //
  // `late` means:
  // We can wait until later to initialize it.

  late final int myValue2 = getValue();

  // `getValue()` is NOT called here.
  // It will be called when `myValue2` is used for the first time.

  print('We are here');

  // Now `myValue2` is used for the first time.
  // So getValue() runs NOW.

  print(myValue2);


  // ============================================================
  // OUTPUT
  // ============================================================

  // 10
  // We are here
  // Get Value called
  // 20
}


// ============================================================
// FUNCTION
// ============================================================

int getValue() {
  print('Get Value called');
  return 20;
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// Normal:
//
// int value = getValue();
//
// getValue() runs immediately.
//
//
//
// late:
//
// late int value = getValue();
//
// getValue() waits until `value` is used.
//
//
//
// late final:
//
// late final int value = getValue();
//
// → Don't initialize now
// → Initialize when first used
// → After initialization, it cannot be assigned again
//
// ============================================================


// ============================================================
// IMPORTANT
// ============================================================
//
// `late` is useful when:
// - We don't want to initialize something immediately.
// - The value is expensive to create.
// - We know the value will be available before we use it.
//
//
//
// Example:
//
// late String username;
//
// username = 'Sreejith';
//
// print(username);
//
// Here we declare the variable first
// and initialize it later.
//
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. What is `late` in Dart?
//
// Answer:
// `late` tells Dart that a variable will be initialized later.
//
//
//
// 2. When does a `late` variable with an initializer get initialized?
//
// Answer:
// It is initialized when the variable is used for the first time.
//
//
//
// 3. What happens if a `late final` variable is used twice?
//
// Answer:
// It is initialized on the first use.
// After that, the same value is used.
//
//
//
// 4. What is the difference between `final` and `late final`?
//
// `final`:
// → Must be initialized before it is used.
//
// `late final`:
// → Can be initialized later, when it is first used
//   (when using a lazy initializer).
//
//
//
// 5. Can we assign a `late final` variable more than once?
//
// No.
//
// Example:
//
// late final int age;
//
// age = 21; // ✅
// age = 22; // ❌
//
//
//
// 6. What happens if we use a `late` variable before assigning it?
//
// Dart throws a `LateInitializationError` at runtime.
//
// Example:
//
// late int age;
//
// print(age); // ❌ Error
//
// ============================================================