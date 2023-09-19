import 'package:flutter/material.dart';
import 'package:flutterclass/list_view/tsk3Container.dart';

class Tsk3 extends StatelessWidget {
  const Tsk3({super.key});
  final List<Map<String, dynamic>> bikeDetails = const [
    {"bikeName": "Apache", "price": "1,48,000"},
    {"bikeName": "Ntraq", "price": "1,40,000"},
    {"bikeName": "Pep+", "price": "88,000"},
    {"bikeName": "Wego", "price": "98,000"},
    {"bikeName": "Jupter", "price": "1,08,000"},
    {"bikeName": "Pulser", "price": "1,38,000"},
    {"bikeName": "Fz", "price": "1,58,000"},
    {"bikeName": "Hornet", "price": "1,43,000"},
    {"bikeName": "Discover", "price": "1,01,000"},
    {"bikeName": "Access", "price": "1,10,000"},
    {"bikeName": "Gixxer", "price": "1,40,000"},
    {"bikeName": "MT15", "price": "1,59,000"},
    {"bikeName": "R15", "price": "1,98,000"},
    {"bikeName": "FzX", "price": "1,68,000"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.directions_bike,
          color: Colors.cyan[100],
        ),
        title: Text(
          "           Bike Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.cyan[100]),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.purple,
      body: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 5 / 2,
        children: bikeDetails.map((detail) {
          return Tsk3Continer(
            bikename: detail["bikeName"],
            price: detail["price"],
          );
        }).toList(),
      ),
    ));
  }
}
