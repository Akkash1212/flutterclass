import 'package:flutter/material.dart';

class Design3 extends StatelessWidget {
  const Design3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black38,
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.black38),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(fontSize: 15, color: Colors.black38),
            ),
            Text(
              'Mr.Anthony Burke,',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                child: Row(
              children: [
                Container(
                  color: Colors.blue,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
