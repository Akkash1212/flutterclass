import 'package:flutter/material.dart';

class Rightpyramid extends StatelessWidget {
  const Rightpyramid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.black,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.black,
                ),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
