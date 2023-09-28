import 'package:flutter/material.dart';
import 'package:flutterclass/ecommous_app/itemCard.dart';

class Shop extends StatelessWidget {
  Shop({super.key});
  List<Map<String, dynamic>> instruments = [
    // {'instrumentName': 'Violen', 'image': 'assets/image/Violin.png'},
    {
      'instrumentName': 'Tabla',
      'image': 'assets/image/Tabla.png',
      'title': 'violin',
      'price': '1200'
    },
    {
      'instrumentName': 'Tanpura',
      'image': 'assets/image/Tanpura.png',
      'title': 'Tanpura',
      'price': '2000'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan[200],
        body: Column(
          children: instruments.map((details) {
            return ItemCard(
              instruments: details,
            );
          }).toList(),
        ),
      ),
    );
  }
}
