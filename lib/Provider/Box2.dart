import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'provider.dart';

class Box2 extends StatelessWidget {
  const Box2({super.key});

  @override
  Widget build(BuildContext context) {
    final exp = Provider.of<ExProvider>(context);
    return Column(
      children: [
        TextButton(
            onPressed: () {
              exp.add();
            },
            child: Icon(Icons.add)),
        Text(
          "${exp.count}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        TextButton(
            onPressed: () {
              exp.sub();
            },
            child: Text(
              '-',
              style: TextStyle(fontSize: 40),
            ))
      ],
    );
  }
}
