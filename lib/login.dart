import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 900,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Hellow Again\nWelcome back you've \n been missed!",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
