import 'package:flutter/material.dart';
import 'package:flutterclass/Provider/provider.dart';
import 'package:provider/provider.dart';

class Box3 extends StatelessWidget {
  const Box3({super.key});

  @override
  Widget build(BuildContext context) {
    final exp = Provider.of<ExProvider>(context);
    return Row(
      children: [
        ElevatedButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.pinkAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.white70, width: 4)))),
            onPressed: () {
              exp.add();
            },
            child: Icon(Icons.add)),
        SizedBox(
          width: 20,
        ),
        Text(
          '${exp.count}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.pinkAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(width: 4, color: Colors.white70)))),
            onPressed: () {
              exp.sub();
            },
            child: Text(
              '-',
              style: TextStyle(fontSize: 30),
            ))
      ],
    );
  }
}
