import 'package:flutter/material.dart';

import 'my_text_field.dart';

class Login_page_1 extends StatelessWidget {
  const Login_page_1({super.key});

  Expanded buildExpandedButton(
      {required String title, Color color = Colors.grey}) {
    return Expanded(
      child: Container(
        height: 40,
        color: color,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://lh3.googleusercontent.com/7K5BkEX8HqQShfGMFH3NuzAgOgIxdzBASWwsBW1FenQPy1cW5alzsLtQirKzLC4ces7_1GXnMNeOso6RYz1-A8hWPXZismqXm0pMl7UWH1ObjQlsZQ=w1440-v1-e30"))),
              ),
              const Row(
                children: [
                  Text(
                    "Welcome\nBack!",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  MyTextField(
                    hintText: "Email",
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    hintText: "Password",
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(fontSize: 18, color: Colors.orange),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  buildExpandedButton(
                      title: "Login", color: Colors.transparent),
                  buildExpandedButton(title: "Signup", color: Colors.orange),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
