import 'package:flutter/material.dart';

import 'itemview.dart';

class ItemCard extends StatelessWidget {
  ItemCard({super.key, required this.instruments});
  final Map<String, dynamic> instruments;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: s.width / 1.7,
        width: s.width / 1.7,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(width: 5, color: Colors.lightBlue),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Image.asset(instruments['image']),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemView(
                            instruments: instruments,
                          ),
                        ),
                      );
                    },
                    icon: Icon(Icons.keyboard_arrow_right))
              ],
            )
          ],
        ),
      ),
    );
  }
}
