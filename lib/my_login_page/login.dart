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
                  Text(
                    "Hellow Again!",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text("Welcome back you've been missed!"),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Username"),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Password"),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 250,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Sign up",
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Recovery Password",
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          gradient: LinearGradient(
                              colors: [Colors.white54, Colors.black54]),
                        ),
                      ),
                      Text("Or continue with"),
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          gradient: LinearGradient(colors: [
                            Colors.black54,
                            Colors.white54,
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
