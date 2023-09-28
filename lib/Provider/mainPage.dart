import 'package:flutter/material.dart';
import 'package:flutterclass/Provider/provider.dart';
import 'package:provider/provider.dart';

import 'Box2.dart';
import 'box1.dart';
import 'box3.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    final exp = Provider.of<ExProvider>(context);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 150,
                    width: 150,
                    color: Colors.red[400],
                    child: Box1()),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 150,
                    width: 150,
                    color: Colors.blueGrey,
                    child: Box2())
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    height: 300,
                    width: 310,
                    color: Colors.blue,
                    child: Box3())
              ],
            )
          ],
        ),
      ),
    );
  }
}
