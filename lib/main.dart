import 'package:flutter/material.dart';

import 'calander/layout2.dart';
import 'calander/layout3.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Layout3(),
    );
  }
}
