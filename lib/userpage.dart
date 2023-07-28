import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)),
                ),
                // SizedBox(
                //   height: 15,
                // ),
                Container(
                  child: Text('UserName',
                      style: TextStyle(
                          fontSize: 30, color: Colors.black.withOpacity(1))),
                ),
                // SizedBox(
                //   height: 15,
                // ),
                Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('MORE...',
                      style: TextStyle(
                          fontSize: 20, color: Colors.white.withOpacity(1))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
