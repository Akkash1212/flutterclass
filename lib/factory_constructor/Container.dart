import 'package:flutter/material.dart';

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

class UserModel extends StatelessWidget {
  UserModel({super.key});
  User user = User(name: 'akash', age: 23, mobleNumber: 9585847049);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(user.name),
            TextButton(
                onPressed: () {
                  print(user.name);
                  print(user.age);
                  print(user.mobleNumber);
                  print(user.convertIntoMap());
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
