import 'package:flutter/material.dart';

import 'login.dart';



void main() {
  runApp(const HD_MyAPp());
}

class HD_MyAPp extends StatelessWidget {
  const HD_MyAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
