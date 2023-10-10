class User {
  String name;
  int age;
  int mobleNumber;
  User({required this.name, required this.age, required this.mobleNumber});

  List<Map<String, dynamic>> convertIntoMap() {
    List<Map<String, dynamic>> people = [
      {"name": "Alice", "age": 30},
      {"name": "Bob", "age": 25},
      {"name": "Charlie", "age": 35},
      {"name": "David", "age": 28},
    ];
    return people;
  }
}
