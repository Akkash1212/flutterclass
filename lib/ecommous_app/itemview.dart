import 'package:flutter/material.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key, required this.instruments});
  final Map<String, dynamic> instruments;

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  bool isliked = false;

  togglefav() {
    isliked = !isliked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: s.width / 1,
                width: s.width / 1,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(widget.instruments['image']),
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: GestureDetector(
                    onTap: togglefav,
                    child: Icon(
                      Icons.favorite,
                      size: 35,
                      color: isliked ? Colors.red : Colors.white,
                    ),
                  ))
            ]),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.instruments['title'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Special price',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.instruments['price'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Regular Price: 50% off',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {},
                    child: Text(
                      'Add Cart',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
