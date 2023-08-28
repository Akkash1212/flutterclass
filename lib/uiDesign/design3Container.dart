import 'package:flutter/material.dart';

class Design3Container extends StatelessWidget {
  const Design3Container(
      {super.key,
      this.color = Colors.black26,
      this.height = 50,
      this.radius = 7});
  final color;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: Icon(
        Icons.file_copy,
        color: Colors.white30,
      ),
    );
  }
}
