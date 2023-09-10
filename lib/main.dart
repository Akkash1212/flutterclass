import 'package:flutter/material.dart';
import 'package:flutterclass/iceCreaamPage/page2.dart';

import 'border.dart';
import 'stack.dart';
import 'uiDesign/design2.dart';
import 'uiDesign/design3.dart';
import 'iceCreaamPage/page1.dart';
import 'uiDesign/layout2.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page2(),
    );
  }
}
