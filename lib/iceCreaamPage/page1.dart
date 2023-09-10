import 'package:flutter/material.dart';

import 'page1TxtCont.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

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
                  isSelected: true,
                  text: 'All',
                ),
                TxtContainer4(
                  isSelected: false,
                  text: 'News',
                ),
                TxtContainer4(
                  isSelected: false,
                  text: 'Category',
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 10),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.7 / 2,
                children: [
                  ImgContainer(
                    isSelected: true,
                    imagepath: "assets/image/Popsicle1.png",
                  ),
                  ImgContainer(
                    isSelected: false,
                    imagepath: "assets/image/Popsicle2.png",
                  ),
                  ImgContainer(
                    isSelected: false,
                    imagepath: "assets/image/popsicle3.png",
                  ),
                  ImgContainer(
                    isSelected: false,
                    imagepath: "assets/image/popsicle4.png",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
