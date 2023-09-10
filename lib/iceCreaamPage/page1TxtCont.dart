import 'package:flutter/material.dart';

class TxtContainer4 extends StatelessWidget {
  const TxtContainer4(
      {super.key, this.text = 'something', this.isSelected = false});
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
          color: isSelected ? Colors.orangeAccent : null,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 3, color: Colors.orangeAccent)),
      child: Text(
        '$text',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: isSelected ? Colors.white : Colors.orangeAccent),
      ),
    );
  }
}

class ImgContainer extends StatelessWidget {
  const ImgContainer(
      {super.key,
      this.isSelected = false,
      this.imagepath = "assets/image/popcicle1.png"});

  final bool isSelected;
  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: isSelected ? Colors.orangeAccent : Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.fitHeight)),
      ),
      Positioned(
        top: 20,
        right: 15,
        child: CircleAvatar(
          backgroundColor:
              isSelected ? Colors.orangeAccent : Colors.orangeAccent,
          radius: 15,
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
