import 'package:flutter/material.dart';

class Tsk4Container extends StatefulWidget {
  const Tsk4Container({super.key});

  @override
  State<Tsk4Container> createState() => _Tsk4ContainerState();
}

class _Tsk4ContainerState extends State<Tsk4Container> {
  final TextEditingController namecontroller = TextEditingController();
  List<String> names = [];
  List<Map<String, dynamic>> listname = [
    {'name': 'akash'},
    {'name': 'sathish'},
    {'name': 'thamizh'},
    {'name': 'prabu'},
    {'name': 'arun'},
    {'name': 'chandru'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    height: 50,
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width),
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
                    if (namecontroller.text.trim() != "") {
                      names.add(namecontroller.text);
                      print(names);
                      namecontroller.clear();
                      setState(() {});
                    }
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
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.indigo[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                  children: names.map((name) {
                return Text(
                  name,
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
