import 'package:flutter/material.dart';

class TxtContainer4 extends StatelessWidget {
  const TxtContainer4(
      {super.key, this.text = 'something', this.cntcolor = false});
  final String text;
  final bool cntcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
          color: cntcolor ? Colors.orangeAccent : null,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 3, color: Colors.orangeAccent)),
      child: Text(
        '$text',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: cntcolor ? Colors.white : Colors.orangeAccent),
      ),
    );
  }
}

class ImgContainer extends StatelessWidget {
  const ImgContainer({super.key, this.cntcolor = false});
  final bool cntcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: cntcolor ? Colors.orangeAccent : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Image(image: AssetImage('assets/image/popcicle1.jpg')));
  }
}
