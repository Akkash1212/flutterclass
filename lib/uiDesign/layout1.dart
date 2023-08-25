import 'package:flutter/material.dart';

import 'column.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white38, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.red,
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.green,
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
