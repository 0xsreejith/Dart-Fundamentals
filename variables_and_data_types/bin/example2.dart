void main() {
  // ============================================================
  // FINAL
  // ============================================================

  // `final` means:
  // We can assign a value only ONCE.
  //
  // After assigning it, we cannot assign a new value.

  final int age = 21;
  print('Age: $age');

  // age = 22; // ❌ Error


  // ============================================================
  // FINAL WITH A LIST
  // ============================================================

  // Here `nums` is final.
  //
  // This means:
  // `nums` cannot be assigned to a NEW list.
  //
  // BUT the existing list can still be changed.

  final List<int> nums = [1, 2, 3];

  nums.add(4);       // ✅ Allowed
  nums.removeAt(0);  // ✅ Allowed

  print(nums);

  // nums = [10, 20]; // ❌ Not allowed


  // ============================================================
  // TWO THINGS ABOUT MUTABILITY
  // ============================================================

  // When learning `final`, understand these two things:
  //
  // 1. VARIABLE / REFERENCE
  //    Can we give the variable a new object?
  //
  // 2. OBJECT / DATA
  //    Can we change the existing object?


  // ------------------------------------------------------------
  // 1. VARIABLE / REFERENCE
  // ------------------------------------------------------------

  final name = 'Sreejith';
  print('Name: $name');

  // name = 'John'; // ❌ Cannot assign a new value
  //
  // `final` stops REASSIGNMENT.


  // ------------------------------------------------------------
  // 2. OBJECT / DATA
  // ------------------------------------------------------------

  final numbers = [1, 2, 3];

  // The List itself is mutable,
  // so we can change its data.

  numbers.add(4); // ✅
  numbers[0] = 10; // ✅

  print(numbers);

  // But we cannot replace the whole List.

  // numbers = [5, 6, 7]; // ❌


  // ============================================================
  // CONST
  // ============================================================

  // `const` means:
  // The value must be known at COMPILE TIME.
  //
  // It cannot be changed.

  const String appName = 'My App';

  print(appName);

  // appName = 'New App'; // ❌


  // ============================================================
  // CONST LIST
  // ============================================================

  // A const object is immutable.
  // We cannot change the contents of the List.

  const List<int> fixedNumbers = [1, 2, 3];

  // fixedNumbers.add(4); // ❌ Cannot modify a const List
  // fixedNumbers[0] = 10; // ❌ Cannot modify it

  print(fixedNumbers);


  // ============================================================
  // FINAL vs CONST
  // ============================================================

  // FINAL
  //
  // Value can be decided at RUNTIME.
  // Assigned only once.

  final currentTime = DateTime.now();

  print(currentTime);


  // CONST
  //
  // Value must be known at COMPILE TIME.

  const year = 2026;

  print(year);


  // ============================================================
  // EASY WAY TO REMEMBER
  // ============================================================

  // final
  // --------------------------------
  // Variable cannot be reassigned ❌
  // Object may still be mutable ✅


  // const
  // --------------------------------
  // Value must be known at compile time
  // Variable cannot be reassigned ❌
  // Object is immutable ❌ cannot be changed


  // ============================================================
  // SIMPLE EXAMPLE
  // ============================================================

  // FINAL LIST

  final fruits = ['Apple', 'Mango'];

  fruits.add('Orange'); // ✅
  // fruits = ['Banana']; // ❌


  // CONST LIST

  const animals = ['Dog', 'Cat'];
  print('Animals: $animals');

  // animals.add('Horse'); // ❌
  // animals = ['Cow'];    // ❌


}


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. What is `final` in Dart?
//
// Answer:
// `final` means a variable can be assigned only once.
// We cannot assign a new value after that.
//
//
//
// 2. What is `const` in Dart?
//
// Answer:
// `const` is used for compile-time constant values.
//
//
//
// 3. What is the difference between `final` and `const`?
//
// Answer:
//
// final:
// - Assigned only once.
// - Value can be decided at runtime.
//
// const:
// - Value must be known at compile time.
// - The object is immutable.
//
//
//
// 4. Can we modify a List declared with `final`?
//
// Answer:
// Yes.
//
// Example:
//
// final nums = [1, 2, 3];
// nums.add(4); // ✅
//
// `final` does not make the List immutable.
//
//
//
// 5. Can we modify a const List?
//
// Answer:
// No.
//
// Example:
//
// const nums = [1, 2, 3];
// nums.add(4); // ❌
//
// A const object cannot be modified.
//
//
//
// 6. Does `final` make an object immutable?
//
// Answer:
// No.
//
// `final` only prevents the variable from being reassigned.
// The object can still be mutable.
//
//
//
// 7. Can `final` use a runtime value?
//
// Answer:
// Yes.
//
// Example:
//
// final time = DateTime.now(); // ✅
//
//
//
// 8. Can `const` use a runtime value?
//
// Answer:
// No.
//
// Example:
//
// const time = DateTime.now(); // ❌
//
// Because `DateTime.now()` is evaluated at runtime.
//
//
//
// 9. What is mutability?
//
// Answer:
// Mutability means whether an object can be changed after
// it is created.
//
// Mutable object:
// Can be changed.
//
// Immutable object:
// Cannot be changed.
//
//
//
// 10. Give a simple example of `final` and mutability.
//
// Answer:
//
// final nums = [1, 2, 3];
//
// nums.add(4);       // ✅ Object changed
// nums = [5, 6, 7];  // ❌ Variable reassigned
//
// So the variable is not reassigned,
// but the List object is still mutable.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// final → "Use this value only once."
//
// const → "This value is a compile-time constant."
//
// final List → List can still change.
//
// const List → List cannot change.
