import 'package:flutter/material.dart';

class Stackex extends StatelessWidget {
  const Stackex({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Mycontainer(
                  margin: 70,
                  length: 200,
                  borderadious: 100,
                  color: Colors.pink,
                ),
                Positioned(
                  top: -20,
                  right: 10,
                  child: Row(
                    children: [
                      Mycontainer(
                        length: 100,
                        borderadious: 50,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Mycontainer(
                        length: 100,
                        borderadious: 50,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 110,
                  top: 70,
                  child: Row(
                    children: [
                      Mycontainer(
                        length: 50,
                        borderadious: 25,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Mycontainer(
                        length: 50,
                        borderadious: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 135,
                  bottom: 30,
                  child: Container(
                    height: 15,
                    width: 60,
                    color: Colors.blueGrey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Mycontainer extends StatelessWidget {
  const Mycontainer(
      {super.key,
      this.length = 100,
      this.borderadious = 50,
      this.color = Colors.redAccent,
      this.margin = 0});
  final double length;
  final double borderadious;
  final Color color;
  final double margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: length,
      width: length,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderadious)),
    );
  }
}
