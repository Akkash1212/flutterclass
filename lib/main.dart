import 'package:flutter/material.dart';

import 'calander/calender.dart';
import 'my_login_page/list_view/list_view.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calender(),
    );
  }
}
