void main() {
  // ============================================================
  // MUTABLE VARIABLES
  // ============================================================

  // `var` allows us to assign a new value later.
  // So the variable can be changed.

  var address = '123 Main St';

  print('Address: $address');

  // ✅ We can assign a new value.
  address = '456 Main St';

  print('Updated Address: $address');


  // ============================================================
  // STRING METHODS
  // ============================================================

  // `String` is immutable in Dart.
  //
  // `replaceAll()` does NOT change the original String.
  // It creates and returns a NEW String.

  address = address.replaceAll('Main', 'New Main');

  print('Modified Address: $address');


  // ============================================================
  // VAR
  // ============================================================

  // `var`:
  // - Dart automatically finds the type.
  // - The variable can be reassigned.
  //
  // Example:

  var name = 'Sreejith';

  name = 'John'; // ✅ Allowed

  print(name);


  // ============================================================
  // FINAL
  // ============================================================

  // `final`:
  // - Can be assigned only ONCE.
  // - We cannot assign a new value later.
  // - The value can be decided at runtime.

  final int age = 21;

  // age = 22; // ❌ Not allowed

  print(age);


  // Example of a runtime value:

  final currentTime = DateTime.now(); // ✅ Allowed

  print(currentTime);


  // ============================================================
  // CONST
  // ============================================================

  // `const`:
  // - Must be known at COMPILE TIME.
  // - Cannot be changed.
  // - A const object is also immutable.

  const int year = 2026;

  // year = 2027; // ❌ Not allowed

  print(year);


  // ============================================================
  // FINAL LIST vs CONST LIST
  // ============================================================

  // FINAL LIST
  //
  // We cannot replace the List,
  // but we CAN change its contents.

  final List<int> numbers = [1, 2, 3];

  numbers.add(4); // ✅ Allowed

  print(numbers);

  // numbers = [10, 20]; // ❌ Cannot assign a new List


  // CONST LIST
  //
  // We cannot replace the List
  // and we cannot change its contents.

  const List<int> fixedNumbers = [1, 2, 3];

  // fixedNumbers.add(4); // ❌ Not allowed
  // fixedNumbers = [10, 20]; // ❌ Not allowed

  print(fixedNumbers);
}


// ============================================================
// MUTABILITY — EASY UNDERSTANDING
// ============================================================
//
// MUTABLE
// → Can be changed.
//
// IMMUTABLE
// → Cannot be changed.
//
//
// `var`
// → Variable can be reassigned.
//
// `final`
// → Variable cannot be reassigned.
// → Object may still be mutable.
//
// `const`
// → Value is a compile-time constant.
// → Const object cannot be changed.
//
//
// Example:
//
// final numbers = [1, 2, 3];
//
// numbers.add(4);      ✅ Object changed
// numbers = [5, 6, 7]; ❌ Variable reassigned
//
//
//
// const numbers = [1, 2, 3];
//
// numbers.add(4);      ❌ Object cannot change
// numbers = [5, 6, 7]; ❌ Variable cannot be reassigned
//
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. What is `var`?
//
// Answer:
// `var` lets Dart infer the variable's type.
// The variable can be reassigned.
//
// Example:
//
// var name = 'Sreejith';
// name = 'John'; // ✅
//
//
//
// 2. What is `final`?
//
// Answer:
// `final` means the variable can be assigned only once.
//
// Example:
//
// final age = 21;
// age = 22; // ❌
//
//
//
// 3. What is `const`?
//
// Answer:
// `const` is used for compile-time constant values.
//
//
//
// 4. What is the difference between `var`, `final`, and `const`?
//
// var:
// → Can be reassigned.
//
// final:
// → Can be assigned only once.
// → Can have a runtime value.
//
// const:
// → Compile-time constant.
// → Cannot be changed.
//
//
//
// 5. Can a `final` List be changed?
//
// Yes.
//
// Example:
//
// final numbers = [1, 2, 3];
// numbers.add(4); // ✅
//
// `final` does not automatically make the List immutable.
//
//
//
// 6. Can a `const` List be changed?
//
// No.
//
// Example:
//
// const numbers = [1, 2, 3];
// numbers.add(4); // ❌
//
//
//
// 7. Is String mutable in Dart?
//
// No. String is immutable.
//
// Example:
//
// var text = 'Hello';
//
// text = text.replaceAll('Hello', 'Hi');
//
// This does not modify the old String.
// It creates a new String and assigns it to `text`.
//
//
//
// 8. Can `final` have a runtime value?
//
// Yes.
//
// final time = DateTime.now(); // ✅
//
//
//
// 9. Can `const` have a runtime value?
//
// No.
//
// const time = DateTime.now(); // ❌
//
// Because `DateTime.now()` is evaluated at runtime.
//
//
//
// ⭐ EASY MEMORY TRICK
//
// var   → "I can change it."
//
// final → "I can set it only once."
//
// const → "It must be known at compile time."