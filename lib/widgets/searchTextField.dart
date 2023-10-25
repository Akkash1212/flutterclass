import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class SerchTextField extends StatefulWidget {
  SerchTextField({super.key});

  @override
  State<SerchTextField> createState() => _SerchTextFieldState();
}

class _SerchTextFieldState extends State<SerchTextField> {
  final TextEditingController namecontroller = TextEditingController();

  List<String> names = [];
  GetStorage storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.center,
              height: 50,
              constraints:
                  BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
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
              foregroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            onPressed: () {
              names.add(namecontroller.text);
              storage.write('names', names);
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
    );
  }
}
