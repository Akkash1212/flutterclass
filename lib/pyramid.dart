import 'package:flutter/material.dart';

class Pyramid extends StatelessWidget {
  const Pyramid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              )
            ],
          )
        ],
      )),
    );
  }
}
