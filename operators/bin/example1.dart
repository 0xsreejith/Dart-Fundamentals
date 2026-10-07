// ignore_for_file: dead_code, invalid_null_aware_operator, unnecessary_type_check, unused_local_variable

void main() {
  // =========================================
  // 1. ARITHMETIC OPERATORS
  // =========================================

  int a = 10;
  int b = 3;

  print(a + b);  // 13  Addition
  print(a - b);  // 7   Subtraction
  print(a * b);  // 30  Multiplication
  print(a / b);  // 3.333... Division
  print(a ~/ b); // 3   Integer division
  print(a % b);  // 1   Remainder


  // =========================================
  // 2. ASSIGNMENT OPERATORS
  // =========================================

  int x = 10;

  x += 5; // x = x + 5
  print(x); // 15

  x -= 5; // x = x - 5
  print(x); // 10

  x *= 2; // x = x * 2
  print(x); // 20


  // =========================================
  // 3. UNARY OPERATORS
  // =========================================

  // Unary means: operator works on ONE value.

  int number = 10;

  // PREFIX ++
  // First increase, then use
  print(++number); // 11


  // POSTFIX ++
  // First use, then increase
  print(number++); // 11
  print(number);   // 12


  // PREFIX --
  // First decrease, then use
  print(--number); // 11


  // POSTFIX --
  // First use, then decrease
  print(number--); // 11
  print(number);   // 10


  // Unary minus
  print(-number); // -10


  // =========================================
  // 4. COMPARISON OPERATORS
  // =========================================

  int age = 20;

  print(age == 20); // true
  print(age != 20); // false
  print(age > 18);  // true
  print(age < 18);  // false
  print(age >= 20); // true
  print(age <= 20); // true


  // =========================================
  // 5. LOGICAL OPERATORS
  // =========================================

  bool hasMoney = true;
  bool isOpen = true;

  // AND: both must be true
  print(hasMoney && isOpen); // true

  // OR: at least one must be true
  print(hasMoney || isOpen); // true

  // NOT: reverses true/false
  print(!hasMoney); // false


  // =========================================
  // 6. NULL-AWARE OPERATORS
  // =========================================

  String? name;

  // ?? means:
  // If name is null, use "Guest"
  print(name ?? "Guest"); // Guest


  // ??= means:
  // Give a value ONLY if it is null
  name ??= "Sreejith";

  print(name); // Sreejith


  // ?. means:
  // Access something only if it is NOT null
  print(name?.length); // 8


  // =========================================
  // 7. CONDITIONAL OPERATOR
  // =========================================

  int myAge = 21;

  // condition ? true value : false value
  String result = myAge >= 18 ? "Adult" : "Minor";

  print(result); // Adult


  // =========================================
  // 8. TYPE CHECKING
  // =========================================

  var value = 10;

  print(value is int);    // true
  print(value is String); // false
  print(value is! String); // true


  // =========================================
  // 9. CASCADE OPERATOR
  // =========================================

  // .. allows multiple operations
  // on the SAME object.

  var person = Person()
    ..name = "Sreejith"
    ..age = 21
    ..showDetails();
}


// Simple class for cascade example
class Person {
  String name = "";
  int age = 0;

  void showDetails() {
    print("Name: $name");
    print("Age: $age");
  }
}