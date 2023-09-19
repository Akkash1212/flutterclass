import 'package:flutter/material.dart';

class Tsk3Continer extends StatelessWidget {
  Tsk3Continer({super.key, this.bikename = "details", this.price = ""});
  final String bikename;
  final dynamic price;
  final color = Colors.cyan[100];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      height: 50,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.purpleAccent[400],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Bike_Name: ',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: color)),
              Text(bikename,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: color))
            ],
          ),
          Row(
            children: [
              Text('Price: ',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: color)),
              Text(price,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: color))
            ],
          )
        ],
      ),
    );
  }
}
