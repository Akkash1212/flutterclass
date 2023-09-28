import 'package:flutter/material.dart';
import 'package:flutterclass/Provider/provider.dart';
import 'package:provider/provider.dart';

class Box1 extends StatelessWidget {
  const Box1({super.key});

  @override
  Widget build(BuildContext context) {
    final exp = Provider.of<ExProvider>(context);
    return Row(
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
