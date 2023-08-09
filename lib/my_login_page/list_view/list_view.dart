import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text("hai"),
            )
          ],
        ),
      )),
    );
  }
}
