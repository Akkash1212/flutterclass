import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterclass/Provider/dataProvider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Map<String, dynamic> userData = {};

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Expanded(
                flex: 7,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            hintText: 'Name',
                          ),
                          controller: usernameController),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            Map<String, dynamic> data = {
                              "name": usernameController.text.trim(),
                              "password": passwordController.text.trim()
                            };
                            if (usernameController.text.trim().isNotEmpty) {
                              dataProvider.addData(
                                  data: data, collection: "Users");
                              usernameController.clear();
                              passwordController.clear();
                            } else {
                              print('Data is Empty');
                            }
                          },
                          child: Text(
                            'Add Data',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        // TextButton(
                        //   onPressed: () async {
                        //     final res =
                        //         await fs.collection('user').doc('9585847049').get();
                        //     print(res.id);
                        //     print(res.exists);
                        //     print(res.data());
                        //     if (res.exists) {
                        //       userData = res.data() ?? {};
                        //     }
                        //   },
                        //   child: Text(
                        //     'Get Data',
                        //     style: TextStyle(color: Colors.white, fontSize: 20),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: SingleChildScrollView(
                  child: Column(
                    children: dataProvider.userList.map((data) {
                      return ListTile(
                        title: Text("${data['name']},${data['password']}"),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
