void main() {
  // ============================================================
  // CONST
  // ============================================================

  // `const` is used to create a compile-time constant.
  // The value must be known when the program is compiled.
  // Once assigned, the value cannot be changed.

  const String message = 'Hello World';

  print(message);

  // ❌ Cannot change a const variable.
  // message = 'Hello Dart';


  // ============================================================
  // CONST WITH DIFFERENT DATA TYPES
  // ============================================================

  const int age = 21;
  const double height = 5.8;
  const bool isDeveloper = true;

  print(age);
  print(height);
  print(isDeveloper);


  // ============================================================
  // CONST VALUES MUST BE KNOWN AT COMPILE TIME
  // ============================================================

  // This works because the value is known at compile time.
  const int number = 10;
  print(number);

  // ❌ This does not work because the function runs at runtime.
  // const username = getUsername();
}


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================

// 1. What is `const` in Dart?
//
// `const` is used to create a compile-time constant.
// Its value cannot be changed.
//
//
//
// 2. Can we change a const variable?
//
// No.
//
// Example:
//
// const age = 21;
// age = 22; // ❌ Error
//
//
//
// 3. When should we use `const`?
//
// Use `const` when you know that a value will never change
// and is known at compile time.
//
// Example:
//
// const appName = 'My App';
// const maxUsers = 100;
//
//
//
// 4. Can we assign a function result to `const`?
//
// No, if the function is evaluated at runtime.
//
// Example:
//
// String getName() => 'Sreejith';
//
// const name = getName(); // ❌ Error
//
//
//
// 5. What is the simple definition of `const`?
//
// `const` = compile-time constant + cannot be changed.