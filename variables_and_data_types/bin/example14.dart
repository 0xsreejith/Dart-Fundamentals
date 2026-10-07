// Top-level private identifier (starts with an underscore):
final int _secretApiKey = 9988;

void main() {
  // ============================================================
  // VARIABLE NAMING CONVENTIONS & IDENTIFIERS
  // ============================================================

  // Dart follows strict naming conventions defined in "Effective Dart".
  // Writing idiomatic Dart code requires following these rules:


  // ============================================================
  // 1. lowerCamelCase FOR VARIABLES & CONSTANTS
  // ============================================================

  // Variables use lowerCamelCase:
  String userName = 'Sreejith';
  int maximumLoginAttempts = 3;

  print('User: $userName, Max attempts: $maximumLoginAttempts');

  // ⭐ CRUCIAL DART DISTINCTION:
  // Unlike Java, C, or Python where constants are SCREAMING_SNAKE_CASE
  // (e.g. MAX_USERS = 100), in Dart constants USE lowerCamelCase!

  const int defaultTimeoutSeconds = 30; // ✅ Correct Dart style
  final String apiBaseUrl = 'https://api.example.com'; // ✅ Correct Dart style

  print('Timeout: $defaultTimeoutSeconds, URL: $apiBaseUrl');

  // ⚠️ Lint warning (constant_identifier_names):
  // const int DEFAULT_TIMEOUT = 30; // ❌ Discouraged by Dart style guide!


  // ============================================================
  // 2. PRIVACY VIA LEADING UNDERSCORE (_)
  // ============================================================

  // Dart does NOT have keywords like `private`, `public`, or `protected`.
  // Instead, adding a leading underscore `_` to top-level variables, classes,
  // or class members makes them PRIVATE to this file/library:

  print('Private library variable: $_secretApiKey');

  // ⭐ CRITICAL INTERVIEW FACT:
  // Privacy in Dart is LIBRARY-SCOPED (file-scoped), NOT class-scoped!
  // Any code inside this same .dart file can see and access `_secretApiKey`.
  // Code in other files/libraries CANNOT access it.


  // ============================================================
  // 3. RULES FOR VALID IDENTIFIERS
  // ============================================================

  // Valid identifiers:
  // - Can contain letters (a-z, A-Z)
  // - Can contain digits (0-9)
  // - Can contain underscores (_) and dollar signs ($)
  // - CANNOT start with a digit
  // - CANNOT be a Dart reserved keyword

  int validNumber = 1;       // ✅ Valid
  int userScore2 = 2;        // ✅ Valid
  int $specialGenerated = 3; // ✅ Valid (often used by code generators)

  print('Valid identifiers: $validNumber, $userScore2, ${$specialGenerated}');

  // ❌ INVALID IDENTIFIERS:
  // int 1user = 10;      // ❌ Error: Cannot start with a digit!
  // int my-score = 20;   // ❌ Error: Hyphens are subtraction operators!
  // int final = 30;      // ❌ Error: 'final' is a reserved keyword!
  // int class = 40;      // ❌ Error: 'class' is a reserved keyword!


  // ============================================================
  // 4. SUMMARY OF DART CASING STYLES
  // ============================================================

  // 1. lowerCamelCase:
  //    - Variable names (e.g. `itemCount`)
  //    - Constant names (e.g. `piValue`)
  //    - Function names (e.g. `calculateTotal`)
  //
  // 2. UpperCamelCase (PascalCase):
  //    - Classes (e.g. `Person`, `HttpClient`)
  //    - Enums (e.g. `Status.ready`)
  //    - Typedefs (e.g. `CallbackFunction`)
  //
  // 3. lowercase_with_underscores (snake_case):
  //    - File names (e.g. `example14.dart`)
  //    - Directory names (e.g. `variables_and_data_types`)
  //    - Package names (e.g. `flutter_bloc`)
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// Dart Rule of Thumb:
// - If it's a variable or constant: lowerCamelCase (e.g. `maxUsers`)
// - If it's a type or class:       UpperCamelCase (e.g. `User`)
// - If it's a file:                lowercase_with_underscores (`user_service.dart`)
// - If it's private:               starts with `_` (`_userPassword`)
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. What casing convention does Dart use for `const` variables?
//
// Answer:
// Dart uses `lowerCamelCase` for constants (e.g. `defaultTimeout`),
// NOT SCREAMING_SNAKE_CASE. Dart's linter warns against SCREAMING_SNAKE_CASE
// under the rule `constant_identifier_names`.
//
//
//
// 2. How is variable privacy achieved in Dart?
//
// Answer:
// By prefixing the variable or identifier with an underscore `_`
// (e.g. `_userId`). There are no `private` or `public` keywords in Dart.
//
//
//
// 3. Is privacy in Dart class-level or library-level?
//
// Answer:
// Library-level (file-level). A private member (`_name`) is accessible
// to ANY class, function, or top-level code within the same `.dart` file.
// It is only hidden from code in other files/libraries.
//
//
//
// 4. Can a Dart variable name start with a number?
//
// Answer:
// No. Identifiers can only start with a letter (a-z, A-Z), an
// underscore (`_`), or a dollar sign (`$`). Starting with a digit
// causes a compile-time syntax error.
//
//
//
// 5. Can reserved keywords like `class` or `void` be used as variable names?
//
// Answer:
// No. Reserved words cannot be used as identifiers because the compiler
// requires them for language grammar.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// Variables & Constants ➡️ lowerCamelCase (like `maxSpeed`)
// Types & Classes       ➡️ UpperCamelCase (like `CarSpeed`)
// Files & Folders       ➡️ snake_case     (like `car_speed.dart`)
// Private members       ➡️ _leadingScore  (Hidden outside file)
