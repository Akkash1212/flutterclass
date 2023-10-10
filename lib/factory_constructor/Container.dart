import 'package:flutter/material.dart';
import './users.dart';

class UserModel extends StatefulWidget {
  UserModel({super.key});

  @override
  State<UserModel> createState() => _UserModelState();
}

class _UserModelState extends State<UserModel> {
  User user = User(name: 'akash', age: 23, mobleNumber: 9585847049);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    // print(user.name);
                    // print(user.age);
                    // print(user.mobleNumber);
                    // print(user.convertIntoMap());

                    user =
                        User(name: 'thamizh', age: 26, mobleNumber: 8776349232);
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Changing value',
                      style: TextStyle(fontSize: 20),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
