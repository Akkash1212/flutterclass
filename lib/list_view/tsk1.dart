import 'package:flutter/material.dart';
import 'package:flutterclass/tsk1.dart';

import 'tsk1Container.dart';

class Listtsk extends StatelessWidget {
  const Listtsk({super.key});
  final List<Map<String, dynamic>> mylist = const [
    {"Name": "akash", "age": "23"},
    {"Name": "sathish", "age": "25"},
    {"Name": "karthi", "age": "28"},
    {"Name": "krishna", "age": "23"},
    {"Name": "dinish", "age": "27"},
    {"Name": "mani", "age": "23"},
    {"Name": "prabu", "age": "30"},
    {"Name": "arun", "age": "23"},
    {"Name": "anand", "age": "21"},
    {"Name": "chandru", "age": "23"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: mylist.map((data) {
              return Tsk1Container(
                name: data["Name"],
                age: int.parse(data['age']),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
