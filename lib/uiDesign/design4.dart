import 'package:flutter/material.dart';

import 'desin4TxtCont.dart';

class Design4 extends StatelessWidget {
  const Design4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.orangeAccent[400],
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.orangeAccent[400],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                      border: InputBorder.none),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TxtContainer4(
                  cntcolor: Colors.orangeAccent,
                  text: 'All',
                ),
                TxtContainer4(
                  cntcolor: Colors.orangeAccent,
                  text: 'News',
                ),
                TxtContainer4(
                  cntcolor: Colors.orangeAccent,
                  text: 'Category',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
