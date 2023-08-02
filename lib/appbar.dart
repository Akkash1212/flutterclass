import 'package:flutter/material.dart';

class Appbarex extends StatelessWidget {
  const Appbarex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Flutter App Bar"),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.search),
        SizedBox(
          width: 15,
        ),
        Icon(Icons.print),
        SizedBox(
          width: 15,
        ),
        Icon(Icons.camera),
        SizedBox(
          width: 15,
        ),
      ],
    ));
  }
}
