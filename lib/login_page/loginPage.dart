import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final fs = FirebaseFirestore.instance;
  Map<String, dynamic> userData = {};

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(
                    Icons.person,
                    size: 70,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(
                      15,
                    )),
                child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.mail),
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                    controller: usernameController),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(
                      15,
                    )),
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            isPassword = !isPassword;
                            setState(() {});
                          },
                          icon: Icon(!isPassword
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off)),
                      border: InputBorder.none,
                      hintText: 'Password'),
                  obscureText: isPassword,
                  controller: passwordController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      fs.collection('user').doc('9585847049').set({
                        'name': 'Akash',
                        'age': '23',
                        'email': 'akash@gmail'
                      });
                    },
                    child: Text(
                      'Add Data',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final res =
                          await fs.collection('user').doc('9585847049').get();
                      print(res.id);
                      print(res.exists);
                      print(res.data());
                      if (res.exists) {
                        userData = res.data() ?? {};
                        setState(() {});
                      }
                    },
                    child: Text(
                      'Get Data',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  '${userData['name']}',
                ),
                subtitle: Text("Name"),
              ),
              ListTile(
                title: Text(
                  '${userData['age']}',
                ),
                subtitle: Text("Age"),
              ),
              ListTile(
                title: Text(
                  '${userData['email']}',
                ),
                subtitle: Text("Email"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
