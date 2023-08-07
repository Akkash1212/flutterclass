import 'package:flutter/material.dart';

import 'Text_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "Hello Again!",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Welcome back you've been missed!",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
              Column(
                children: [
                  TextContainer(),
                  SizedBox(
                    height: 10,
                  ),
                  TextContainer()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
