import 'dart:html';

import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});
  List<Widget> tilelist(int count) {
    List<Widget> tile = [];
    for (int i = 0; i <= count; i++) {
      Container con = Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: ListTile(
            title: Text("Tile"),
            tileColor: Colors.green,
            splashColor: Colors.red,
            focusColor: Colors.yellow,
            onTap: () {},
            leading: Icon(Icons.close),
            trailing: Icon(Icons.call),
          ));
      tile.add(con);
    }
    return tile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          children: tilelist(5),
        ),
      )),
    );
  }
}
