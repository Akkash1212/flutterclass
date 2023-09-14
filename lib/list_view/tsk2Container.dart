import 'package:flutter/material.dart';

class Tsk2Continer extends StatelessWidget {
  const Tsk2Continer(
      {super.key, this.username = "details", this.password = ""});
  final String username;
  final dynamic password;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Username: ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(username,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            children: [
              Text('Password: ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(password,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
