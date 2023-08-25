import 'package:flutter/material.dart';

class Dayscolumn extends StatelessWidget {
  const Dayscolumn({super.key, this.days = "days"});
  final dynamic days;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          days,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
