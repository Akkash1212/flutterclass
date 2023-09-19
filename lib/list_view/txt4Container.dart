import 'package:flutter/material.dart';

class Tsk4Container extends StatefulWidget {
  const Tsk4Container({super.key});

  @override
  State<Tsk4Container> createState() => _Tsk4ContainerState();
}

class _Tsk4ContainerState extends State<Tsk4Container> {
  final TextEditingController namecontroller = TextEditingController();
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white38),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white60,
                      ),
                      suffixIcon: Icon(
                        Icons.cancel,
                        color: Colors.white60,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white60,
                      )),
                )),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              onPressed: () {
                names.add(namecontroller.text);
                print(names);
                namecontroller.clear();
                setState(() {});
              },
              child: Text(
                'Submit',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
        Column(
            children: names.map((name) {
          return Text(name);
        }).toList()),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [Text('Name:')],
            )),
      ],
    );
  }
}
