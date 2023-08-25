import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox(
      {super.key,
      this.height = 100,
      this.width = 100,
      this.radius = 20,
      this.colors = Colors.grey});
  final double height;
  final double width;
  final double radius;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
