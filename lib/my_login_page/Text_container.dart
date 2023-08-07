import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "hint",
        ),
      ),
    );
  }
}
