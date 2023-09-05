import 'package:flutter/material.dart';

class TxtContainer4 extends StatelessWidget {
  const TxtContainer4({
    super.key,
    this.text = 'something',
    this.cntcolor = Colors.transparent,
  });
  final String text;
  final Color cntcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
          color: cntcolor, borderRadius: BorderRadius.circular(15)),
      child: Text(
        '$text',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
