import 'package:flutter/material.dart';

class Borders extends StatelessWidget {
  const Borders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            alignment: Alignment.center,
            height: 80,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  width: 10,
                  color: Colors.blueGrey,
                  strokeAlign: BorderSide.strokeAlignOutside),
            ),
            child: Text(
              'Border Decorations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            alignment: Alignment.center,
            height: 80,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 8.0,
                ),
                right: BorderSide(
                  color: Colors.black,
                  width: 15.0,
                ),
                top: BorderSide(
                  color: Color(0xff6ae792),
                  width: 15.0,
                ),
                bottom: BorderSide(
                  color: Color(0xff6ae792),
                  width: 10,
                ),
              ),
            ),
            child: Text(
              'Border Decorations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
