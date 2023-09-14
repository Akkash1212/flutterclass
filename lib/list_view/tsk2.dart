import 'package:flutter/material.dart';

import 'tsk2Container.dart';

class Tsk2 extends StatelessWidget {
  const Tsk2({super.key});
  final List<Map<String, dynamic>> admin = const [
    {"username": "akash", "password": "123@123"},
    {"username": "sathish", "password": "234@123"},
    {"username": "kavi", "password": "223@123"},
    {"username": "krish", "password": "134@123"},
    {"username": "thamizh", "password": "687@123"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
        child: Column(
          children: admin.map((detail) {
            return Tsk2Continer(
              username: detail["username"],
              password: detail["password"],
            );
          }).toList(),
        ),
      ),
    );
  }
}
