import 'package:flutter/material.dart';
import 'package:flutterclass/uiDesign//my_box.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyBox(
                width: double.infinity,
                colors: Colors.red,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                MyBox(
                  colors: Colors.blue,
                ),
                MyBox(
                  colors: Colors.yellow,
                ),
                MyBox(
                  colors: Colors.red,
                )
              ]),
              MyBox(
                width: double.infinity,
                colors: Colors.yellow,
              ),
              MyBox(
                width: double.infinity,
                colors: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
