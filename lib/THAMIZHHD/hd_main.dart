import 'package:flutter/material.dart';

import 'login_page/login_page_1.dart';

void main() {
  runApp(const HD_MyAPp());
}

class HD_MyAPp extends StatelessWidget {
  const HD_MyAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_page_1(),
    );
  }
}
