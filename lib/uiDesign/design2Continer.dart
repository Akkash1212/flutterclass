import 'package:flutter/material.dart';

class SpotifyContiner extends StatelessWidget {
  const SpotifyContiner(
      {super.key, this.color = Colors.white, this.type = "Melody"});
  final color;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      height: 120,
      width: 200,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Text(
        type,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
