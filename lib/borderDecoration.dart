import 'package:flutter/material.dart';

class Mycointainer extends StatelessWidget {
  const Mycointainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 150,
          margin: EdgeInsets.all(15),
          // margin: EdgeInsets.only(left: 10, right: 25),
          // margin: EdgeInsets.symmetric(horizontal: 40),

          alignment: Alignment.center,
          color: Colors.brown,
          child: Text('Flutter'),
        ),
        Container(
          height: 150,
          width: 150,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            border: Border.all(width: 10, color: Colors.red),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                blurRadius: 5,
                offset: Offset(15, 15),
              ),
            ],
          ),
          child: Text(
            'flutter',
            style:
                TextStyle(fontSize: 40, color: Colors.black.withOpacity(0.7)),
          ),
        ),
      ],
    );
  }
}
