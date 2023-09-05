import 'package:flutter/material.dart';

class TxtContainer4 extends StatelessWidget {
  const TxtContainer4({super.key, this.text = 'something'});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      padding: EdgeInsets.all(10),
      child: Text('data'),
    );
  }
}
