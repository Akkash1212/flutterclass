import 'package:flutter/material.dart';

// import 'page3container.dart';

class Page3 extends StatelessWidget {
  Page3({super.key});

  Color color = Colors.deepOrangeAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_outlined,
                  color: color,
                  size: 35,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // MainContainer(),
            SizedBox(
              height: 10,
            ),
            // MainContainer()
          ],
        ),
      ),
    );
  }
}
