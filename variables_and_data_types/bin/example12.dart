void main() {
  // ============================================================
  // COLLECTION DATA TYPES: List, Set, AND Map
  // ============================================================

  // Dart provides three built-in collection types:
  // 1. `List` → Ordered group of items (allows duplicates)
  // 2. `Set`  → Unordered group of UNIQUE items (no duplicates)
  // 3. `Map`  → Key-Value pairs (unique keys)


  // ============================================================
  // 1. List<T> (ORDERED, INDEXED, DUPLICATES ALLOWED)
  // ============================================================

  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Apple'];

  print('Fruits list: $fruits');
  print('First fruit (index 0): ${fruits[0]}');
  print('List length: ${fruits.length}');

  // Adding and removing items:
  fruits.add('Orange');
  fruits.remove('Banana');
  print('Updated fruits: $fruits');


  // ============================================================
  // 2. Set<T> (UNIQUE ITEMS ONLY)
  // ============================================================

  // A Set automatically filters out duplicates:
  List<int> numbersWithDuplicates = [1, 2, 3, 3, 4, 4, 5];
  Set<int> uniqueNumbers = numbersWithDuplicates.toSet();

  print('Set numbers (duplicates removed): $uniqueNumbers'); // {1, 2, 3, 4, 5}

  // Adding a duplicate element has no effect:
  uniqueNumbers.add(3);
  print('After adding duplicate 3: $uniqueNumbers');

  // Fast lookup:
  print('Contains 3? ${uniqueNumbers.contains(3)}'); // true


  // ============================================================
  // ⚠️ THE TRAP: EMPTY SET vs EMPTY MAP
  // ============================================================

  // Dart syntax historically used `{}` for Maps first.
  // Therefore, `{}` defaults to an empty Map, NOT a Set!

  var emptyLiteral = {}; // Inferred as Map<dynamic, dynamic>!
  print('emptyLiteral type: ${emptyLiteral.runtimeType}');

  // ✅ To create an empty Set, specify the type:
  Set<String> emptySet1 = {};
  var emptySet2 = <String>{};
  print('emptySet1 type: ${emptySet1.runtimeType}');
  print('emptySet2 type: ${emptySet2.runtimeType}');


  // ============================================================
  // 3. Map<K, V> (KEY-VALUE PAIRS)
  // ============================================================

  Map<String, dynamic> userProfile = {
    'id': 101,
    'name': 'Sreejith',
    'role': 'Developer',
    'isActive': true,
  };

  print('User Name: ${userProfile['name']}');
  print('User Role: ${userProfile['role']}');

  // Accessing a key that does NOT exist returns `null`:
  print('Non-existent key: ${userProfile['salary']}'); // null

  // Adding a new key-value pair:
  userProfile['country'] = 'India';
  print('Keys: ${userProfile.keys}');
  print('Values: ${userProfile.values}');


  // ============================================================
  // 4. CONST COLLECTIONS (DEEP IMMUTABILITY)
  // ============================================================

  // A `const` collection cannot be modified at all:
  const List<int> immutableList = [10, 20, 30];

  // ❌ Throws UnsupportedError at runtime: Cannot add to an unmodifiable list
  // immutableList.add(40);
  print('Immutable list: $immutableList');
}


// ============================================================
// EASY UNDERSTANDING
// ============================================================
//
// Collection | Syntax           | Duplicates? | Ordered? | Access by
// -----------|------------------|-------------|----------|-------------
// List       | `[1, 2, 3]`      | YES         | YES      | Index [0]
// Set        | `{1, 2, 3}`      | NO (Unique) | NO       | contains()
// Map        | `{'a': 1}`       | Keys: NO    | NO       | Key ['a']
// ============================================================


// ============================================================
// INTERVIEW QUESTIONS
// ============================================================
//
// 1. What is the difference between a `List` and a `Set` in Dart?
//
// Answer:
// - `List`: An ordered collection where elements are accessed
//   by numeric index. Duplicates are allowed.
// - `Set`: An unordered collection of unique elements. Duplicates
//   are automatically ignored. Lookup via `.contains()` is O(1) time.
//
//
//
// 2. How does Dart interpret `{}` by default?
//
// Answer:
// Dart interprets `{}` as an empty `Map<dynamic, dynamic>`, NOT a Set.
// To create an empty Set, you must use `<Type>{}` or `Set<Type>()`.
//
//
//
// 3. What happens when you read a key that does not exist in a Map?
//
// Answer:
// Dart returns `null`. It does NOT throw an exception.
//
//
//
// 4. What is the difference between `final List` and `const List`?
//
// Answer:
// - `final List`: The reference cannot be reassigned to another list,
//   but you CAN still add, remove, or modify items inside the list.
// - `const List`: The list is completely immutable. Attempting to
//   add or modify items throws an `UnsupportedError` at runtime.
//
//
//
// 5. What are generic types in Dart collections?
//
// Answer:
// Generics specify the type of elements a collection can hold
// (e.g. `List<String>`, `Map<String, int>`). They ensure compile-time
// type safety so incorrect types cannot be added.
//
//
//
// ============================================================
// ⭐ INTERVIEW MEMORY TRICK
// ============================================================
//
// [ ] ➡️ List (Ordered list of items)
// { } with values only   ➡️ Set (Unique items only)
// { } with key : value  ➡️ Map (Key-value pairs)
// { } empty              ➡️ Map by default (Use <Type>{} for empty Set!)
