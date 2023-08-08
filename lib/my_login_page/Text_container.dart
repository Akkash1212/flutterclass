import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(
      {super.key, this.hintText = "hint", this.isPassword = false});
  final String hintText;
  final bool isPassword;

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
          hintText: hintText,
        ),
        obscureText: isPassword,
      ),
    );
  }
}
