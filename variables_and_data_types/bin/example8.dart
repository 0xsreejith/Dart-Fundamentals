void main() {
  // ============================================================
  // NUMERIC DATA TYPES: int, double, AND num
  // ============================================================

  // Dart provides three core types for numbers:
  // 1. `int`    → Whole numbers (integers without decimals)
  // 2. `double` → Floating-point numbers (decimals)
  // 3. `num`    → The superclass (parent) of both `int` and `double`


  // ============================================================
  // 1. `int` AND `double`
  // ============================================================

  int itemsCount = 5;
  double pricePerItem = 19.99;

  print('Items: $itemsCount');
  print('Price: \$$pricePerItem');


  // ============================================================
  // 2. INTEGER-TO-DOUBLE AUTO CONVERSION
  // ============================================================

  // In Dart, integer literals can be directly assigned to a `double`.
  // Dart automatically converts it into a double:

  double temperature = 30; // Automatically becomes 30.0
  print('Temperature: $temperature'); // 30.0

  // BUT THE REVERSE IS NOT ALLOWED!
  // A double CANNOT be automatically assigned to an int:
  // int roundedScore = 85.5; // ❌ Compile error!


  // ============================================================
  // 3. CONVERTING DOUBLE TO INT
  // ============================================================

  double rating = 4.7;

  // You must explicitly convert double to int:
  int truncatedRating = rating.toInt();    // 4 (drops decimals)
  int roundedRating = rating.round();      // 5 (rounds to nearest)
  int floorRating = rating.floor();        // 4 (rounds down)
  int ceilRating = rating.ceil();          // 5 (rounds up)

  print('toInt(): $truncatedRating');
  print('round(): $roundedRating');
  print('floor(): $floorRating');
  print('ceil(): $ceilRating');


  // ============================================================
  // 4. `num` (THE SUPERCLASS)
  // ============================================================

  // `num` can hold EITHER an `int` OR a `double`.
  // It can switch between them at runtime:

  num distance = 100; // Currently holding an int
  print('Distance as int: $distance (${distance.runtimeType})');

  distance = 100.75;  // Now holding a double
  print('Distance as double: $distance (${distance.runtimeType})');


  // ============================================================
  // 5. PARSING STRINGS TO NUMBERS
  // ============================================================

  // `parse()` throws FormatException if the string is invalid:
  int parsedInt = int.parse('42');
  double parsedDouble = double.parse('3.14');
  print('Parsed int: $parsedInt');
  print('Parsed double: $parsedDouble');

  // `tryParse()` is MUCH SAFER!
  // It returns `null` instead of throwing an exception on invalid input:
  int? safeInt = int.tryParse('not_a_number'); // Returns null safely!
  print('Safe parsed int: $safeInt'); // null

  // Formatting decimals:
  double pi = 3.14159265;
  print('PI formatted to 2 decimals: ${pi.toStringAsFixed(2)}'); // 3.14
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
//          num (Parent)
//         /   \
//      int     double
//
// - `num` can hold either `int` or `double`.
// - `int` automatically fits into `double` (e.g. 5 becomes 5.0).
// - `double` requires explicit methods to fit into `int` (.toInt(), .round()).
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. What is the difference between `int`, `double`, and `num`?
//
// Answer:
// - `int`: Represents integer numbers (no decimal point).
// - `double`: Represents 64-bit IEEE 754 floating-point numbers.
// - `num`: The direct superclass of both `int` and `double`.
//   A variable of type `num` can hold either integers or decimals.
//
//
//
// 2. Can you assign an `int` to a `double` in Dart?
//
// Answer:
// Yes! Dart automatically converts integer literals to double.
// Example: double x = 10; // x becomes 10.0
//
//
//
// 3. Can you assign a `double` to an `int` in Dart?
//
// Answer:
// No. Doing so causes a compile-time error. You must explicitly
// use conversion methods like `.toInt()`, `.round()`, `.floor()`,
// or `.ceil()`.
//
//
//
// 4. What is the difference between `int.parse()` and `int.tryParse()`?
//
// Answer:
// - `int.parse()`: Parses a string into an integer. If the string
//   is invalid, it throws a `FormatException` and crashes if unhandled.
// - `int.tryParse()`: Safely parses a string. If the string is
//   invalid, it returns `null` without throwing an exception.
//
//
//
// 5. How do you round a double to 2 decimal places in Dart?
//
// Answer:
// Use the `.toStringAsFixed(2)` method.
// Example:
// double price = 12.3456;
// String formatted = price.toStringAsFixed(2); // '12.35'
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// int     ➡️ Whole numbers (1, 2, 3)
// double  ➡️ Decimal numbers (1.5, 2.0)
// num     ➡️ Parent of both (can be int or double)
// tryParse ➡️ Always prefer tryParse over parse for user inputs!
