import 'package:flutter/material.dart';

import 'txt4Container.dart';

class Tsk4 extends StatelessWidget {
  Tsk4({super.key});
  final List<Map<String, dynamic>> details = [{}];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [Tsk4Container()],
      ),
    ));
  }
}
