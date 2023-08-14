import 'package:flutter/material.dart';

class Lyt3Text extends StatelessWidget {
  const Lyt3Text(
      {super.key,
      this.boldtext = false,
      this.emttext = "Text",
      this.color = Colors.white});
  final String emttext;
  final bool boldtext;
  final color;

  final double fontsize = 15;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        emttext,
        style: TextStyle(
            color: color,
            fontSize: fontsize,
            fontWeight: boldtext ? FontWeight.bold : null),
      ),
    );
  }
}
