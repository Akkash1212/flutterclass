import 'package:flutter/material.dart';

import 'Text_container.dart';
import 'image_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  Expanded Border({bool right = true}) {
    return Expanded(
        child: Container(
          height: 5,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: right ? Alignment.centerRight : Alignment.centerLeft,
                  end: right ? Alignment.centerLeft : Alignment.centerRight,
                  colors: [Colors.black38, Colors.transparent])),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  TextContainer(
                    hintText: "Enter username",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextContainer(
                    hintText: "Enter password",
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Forgot Password")],
                  )
                ],
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Border(right: true),
                  Text("     or continue with      "),
                  Border(right: false)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageContainer(links: "https://www.pngwing.com/en/free-png-znzwp"),
                  ImageContainer(),
                  ImageContainer()
                ],
              ),Container(child: Text("Not a member?Register now"),)
            ],
          ),
        ),
      ),
    );
  }
}