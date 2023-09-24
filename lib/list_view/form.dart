import 'package:flutter/material.dart';

class Formtsk extends StatefulWidget {
  Formtsk({super.key});

  @override
  State<Formtsk> createState() => _FormtskState();
}

class _FormtskState extends State<Formtsk> {
  bool isSwitched = false;
  int val = 1;
  String dropdownval = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            children: [
              Text('Form Example '),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: ' Autocomplete',
                      hintText: 'Name'),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: ' Date Picker',
                      hintText: 'Date and Month',
                      suffixIcon: Icon(Icons.calendar_today)),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: ' Date Range Picker',
                      hintText: 'Date Range',
                      suffixIcon: Icon(Icons.date_range)),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Time Picker',
                      hintText: 'Time',
                      suffixIcon: Icon(Icons.timer)),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Switch',
                      hintText: 'This is a switch',
                      suffixIcon: Icon(Icons.switch_access_shortcut)),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Switch',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Radio Button 1',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Radio Button 2',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
              DropdownButton(
                icon: Icon(Icons.safety_check),
                items: [
                  DropdownMenuItem(value: 'one', child: Text('One')),
                  DropdownMenuItem(value: 'two', child: Text('two'))
                ],
                value: dropdownval,
                onChanged: (newvalue) {
                  setState(() {
                    dropdownval = newvalue!;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
