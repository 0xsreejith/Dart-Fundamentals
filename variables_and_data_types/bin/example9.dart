void main() {
  // ============================================================
  // STRINGS: IMMUTABILITY, INTERPOLATION & RUNES
  // ============================================================

  // In Dart, a `String` is a sequence of UTF-16 code units.
  // Strings are completely IMMUTABLE.


  // ============================================================
  // 1. SINGLE QUOTES vs DOUBLE QUOTES
  // ============================================================

  // Dart allows both, but Effective Dart recommends SINGLE QUOTES:
  String singleQuotes = 'Hello Dart';
  String doubleQuotes = "Hello Flutter";

  print(singleQuotes);
  print(doubleQuotes);

  // Double quotes are convenient when the string contains a single quote:
  String quote = "It's a beautiful day";
  print(quote);


  // ============================================================
  // 2. STRING INTERPOLATION
  // ============================================================

  // In Dart, do NOT use `+` to concatenate strings.
  // ALWAYS use string interpolation:
  // - `$variable` for simple variables
  // - `${expression}` for complex expressions, properties, or methods

  String name = 'Sreejith';
  int birthYear = 2003;
  int currentYear = 2026;

  // Simple variable: $name
  // Expression: ${currentYear - birthYear}
  String intro = 'Hi, my name is $name and I am ${currentYear - birthYear} years old.';
  print(intro);


  // ============================================================
  // 3. MULTI-LINE STRINGS
  // ============================================================

  // Use triple single quotes (''') or triple double quotes ("""):
  String address = '''
123 Main Street,
Apartment 4B,
New York, NY
''';

  print('Address:\n$address');


  // ============================================================
  // 4. RAW STRINGS
  // ============================================================

  // Prefixing a string with `r` creates a RAW STRING.
  // Escape sequences like `\n` or `\t` are treated as literal text:

  String normalString = 'Line 1\nLine 2';
  String rawString = r'Line 1\nLine 2'; // \n is NOT converted to a new line

  print('Normal: $normalString');
  print('Raw: $rawString');

  // Great for Windows paths and regular expressions:
  String windowsPath = r'C:\Users\John\Documents';
  print('Path: $windowsPath');


  // ============================================================
  // 5. STRING IMMUTABILITY
  // ============================================================

  // Strings can NEVER be modified after creation.
  // Methods like `.toUpperCase()` or `.trim()` do NOT modify the
  // original string; they return a NEW string.

  String original = '   hello world   ';
  String trimmed = original.trim();
  String capitalized = trimmed.toUpperCase();

  print('Original: "$original"'); // Still has spaces and lowercase!
  print('Trimmed: "$trimmed"');
  print('Capitalized: "$capitalized"');


  // ============================================================
  // 6. RUNES (UNICODE CODE POINTS & EMOJIS)
  // ============================================================

  // A Rune represents an integer Unicode code point of a character.
  // Emojis and special symbols require 32-bit Unicode representation:

  Runes heartRune = Runes('\u2665'); // Heart symbol
  Runes smileRune = Runes('\u{1F600}'); // Smiling emoji

  print('Heart: ${String.fromCharCodes(heartRune)}');
  print('Smile: ${String.fromCharCodes(smileRune)}');
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// 1. Strings never change (Immutable).
// 2. Use `$variable` for variables, `${expression}` for logic.
// 3. Use `r'...'` to disable escape characters like `\n`.
// 4. Use `'''...'''` for multiline text.
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. Are Strings mutable or immutable in Dart?
//
// Answer:
// Strings are completely immutable. Once created, a String cannot
// be altered. Any method that appears to modify a String (such as
// `replaceAll()`, `toUpperCase()`, `substring()`) actually creates
// and returns a brand-new String object in memory.
//
//
//
// 2. What is the difference between `$variable` and `${expression}`?
//
// Answer:
// - `$variable`: Used for simple variable identifiers (e.g. `$name`).
// - `${expression}`: Used whenever you access properties, call methods,
//   or evaluate operators (e.g. `${person.name}`, `${1 + 1}`, `${name.length}`).
//
//
//
// 3. What is a raw string in Dart and when do you use it?
//
// Answer:
// A raw string is prefixed with `r` (e.g. `r'text\n'`). In a raw
// string, escape sequences (like `\n`, `\t`, `\\`) are treated as
// literal characters instead of escape characters.
// It is useful for regular expressions and file paths.
//
//
//
// 4. Why does Effective Dart prefer single quotes over double quotes?
//
// Answer:
// Dart's official style guide recommends single quotes for consistency
// across the codebase. Double quotes are reserved for strings that
// contain single quotation marks (apostrophes).
//
//
//
// 5. What is a `Rune` in Dart?
//
// Answer:
// A `Rune` is an integer representing a 32-bit Unicode code point.
// Since Dart strings are UTF-16 code units, emojis and special characters
// take surrogate pairs (two 16-bit code units). Runes allow accessing
// the full 32-bit character code.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// Single quotes  ➡️  Standard style ('Hello')
// $name          ➡️  Simple interpolation
// ${name.length} ➡️  Expression interpolation (curly braces needed!)
// r'...'         ➡️  Raw text (no \n escapes)
// String methods ➡️  Always return NEW strings, never mutate!
