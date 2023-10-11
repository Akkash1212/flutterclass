import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  TextEditingController namecontroller = TextEditingController();
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white38),
                    child: TextField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white60,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              namecontroller.clear();
                            },
                            child: Icon(
                              Icons.cancel,
                              color: Colors.white60,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white60,
                          )),
                    )),
              ),
              Container(
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                  ),
                  onPressed: () {
                    names.add(namecontroller.text);
                    namecontroller.clear();
                    setState(() {});
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                  children: names.map((values) {
                return Text(
                  values,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                );
              }).toList()),
            ),
          ),
        ]),
      ),
    );
  }
}
