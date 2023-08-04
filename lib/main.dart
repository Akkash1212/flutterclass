import 'package:flutter/material.dart';

import 'borderDecoration.dart';
import 'colum_row.dart';
import 'liftpyramid.dart';
import 'login.dart';
import 'pyramid.dart';
import 'userpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
