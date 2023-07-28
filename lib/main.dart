import 'package:flutter/material.dart';

import 'borderDecoration.dart';
import 'colum_row.dart';
import 'liftpyramid.dart';
import 'pyramid.dart';
import 'user1.dart';
import 'userpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DisplyFlex());
  }
}
