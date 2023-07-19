import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              height: 80,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text('Welcome'),
            ),
            Container(
              color: Colors.white,
              height: 80,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("H")),
                  ),
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("E")),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("L")),
                  ),
                  Container(
                    color: Colors.deepOrange,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("L")),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("O")),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.pink,
                  height: 160,
                  width: 160,
                ),
                Container(
                  color: Colors.lime,
                  height: 160,
                  width: 160,
                ),
                Container(
                  color: Colors.tealAccent,
                  height: 160,
                  width: 160,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
