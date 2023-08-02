import 'package:flutter/material.dart';

import 'appbar.dart';
import 'borderDecoration.dart';
import 'colum_row.dart';
import 'liftpyramid.dart';
import 'pyramid.dart';
import 'user1.dart';
import 'userpage.dart';
import 'wrap.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Appbarex());
  }
}
