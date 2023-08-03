import 'package:flutter/material.dart';

class DisplyFlex extends StatelessWidget {
  const DisplyFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 170,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    border: Border.all(
                      color: Colors.lightGreen,
                      width: 10,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 5,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 130,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 80,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightGreen,
                      width: 10,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 5,
                        offset: Offset(-10, -10),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 130,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 80,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 170,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.lightGreen,
                    width: 10,
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 80,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 130,
                        width: 50,
                        color: Colors.black,
                      ),
                      Container(
                        height: 80,
                        width: 50,
                        color: Colors.black,
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        color: Colors.black,
                      ),
                      Container(
                        height: 100,
                        width: 50,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
