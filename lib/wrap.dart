import 'dart:html';

import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  const Wraps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Wrap(
        children: [
          Chip(
              label: Text(
            'flutter',
            textAlign: TextAlign.end,
            style: TextStyle(
              shadows: [Shadow(color: Colors.black, offset: Offset(10, -10))],
              decorationColor: Colors.red,
              fontSize: 30,
              color: Colors.teal,
            ),
          )),
          Chip(
            label: Text('Microsoft'),
            backgroundColor: Colors.blue,
          ),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
          Chip(label: Text('data')),
          Chip(label: Text('Microsoft')),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
          Chip(label: Text('data')),
          Chip(label: Text('Microsoft')),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
          Chip(label: Text('data')),
          Chip(label: Text('Microsoft')),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
          Chip(label: Text('data')),
          Chip(label: Text('Microsoft')),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
          Chip(label: Text('data')),
          Chip(label: Text('Microsoft')),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
          Chip(label: Text('data')),
          Chip(label: Text('Microsoft')),
          Chip(label: Text('java')),
          Chip(label: Text('JavaScrip')),
        ],
      ),
    ));
  }
}
