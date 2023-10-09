import 'dart:math';

import 'package:flutter/material.dart';

class Tsk5 extends StatefulWidget {
  const Tsk5({super.key});

  @override
  State<Tsk5> createState() => _Tsk5State();
}

class _Tsk5State extends State<Tsk5> {
  String btninfo = 'Button Info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(45)),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                btninfo,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black87),
              ),
            ),
            TextButton(
                onPressed: txtbtn,
                child: Text(
                  'Text Button',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.pinkAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.white70, width: 4)))),
                onPressed: elevatedbtn,
                child: FittedBox(
                  child: Row(
                    children: [
                      Icon(Icons.tiktok),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Elevated Button ',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                )),
            FloatingActionButton(
              splashColor: Colors.pinkAccent,
              onPressed: flotingbtn,
              child: Icon(Icons.flood),
            ),
            IconButton(
                splashRadius: 20,
                splashColor: Colors.pinkAccent,
                onPressed: iconbtn,
                icon: Icon(Icons.import_contacts))
          ],
        ),
      )),
    );
  }

  void txtbtn() {
    print('My Text Button');
    btninfo = "Text Button Clicked";
    setState(() {});
  }

  void elevatedbtn() {
    print('My Elevation Button');
    btninfo = "Elevation  Button Clicked";
    setState(() {});
  }

  void flotingbtn() {
    print('My floating Button');
    btninfo = "Floating Button Clicked";
    setState(() {});
  }

  void iconbtn() {
    print('My Icon Button');
    btninfo = "Icon Button Clicked";
    setState(() {});
  }
}
