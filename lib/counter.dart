import 'package:flutter/material.dart';

import 'factory_constructor/users.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counting = 0;
  User user = User(name: 'akash', age: 23, mobleNumber: 9585847049);
  List<Map<String, dynamic>> people = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  counting += 1;
                  user.name;
                  setState(() {});
                },
                icon: Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                user.name,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    counting -= 1;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.minimize,
                    size: 50,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
