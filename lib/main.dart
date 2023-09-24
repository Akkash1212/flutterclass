import 'package:flutter/material.dart';

import 'border.dart';
import 'iceCreaamPage/page2.dart';
import 'iceCreaamPage/page3.dart';
import 'list_view/form.dart';
import 'list_view/tsk1.dart';
import 'list_view/tsk2.dart';
import 'list_view/tsk2Container.dart';
import 'list_view/tsk3.dart';

import 'list_view/tsk5.dart';
import 'list_view/txt4Container.dart';
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
      home: Formtsk(),
    );
  }
}
