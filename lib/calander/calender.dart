import 'package:flutter/material.dart';

import 'column.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(20)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "August 2023",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Dayscolumn(
                  days: "Sun",
                ),
                SizedBox(
                  width: 10,
                ),
                // Column(
                //   children: [Dayscolumn(days: 6)],
                // ),
                Dayscolumn(
                  days: "Mon",
                ),
                SizedBox(
                  width: 10,
                ),
                Dayscolumn(
                  days: "Tue",
                ),
                SizedBox(
                  width: 10,
                ),
                Dayscolumn(
                  days: "Wed",
                ),
                SizedBox(
                  width: 10,
                ),
                Dayscolumn(
                  days: "Thu",
                ),
                SizedBox(
                  width: 10,
                ),
                Dayscolumn(
                  days: "Fri",
                ),
                SizedBox(
                  width: 10,
                ),
                Dayscolumn(
                  days: "Sat",
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
              Text('6'),
              Text('7')
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text('8'),
              Text('9'),
              Text('10'),
              Text('11'),
              Text('12'),
              Text('13'),
              Text('14')
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text('15'),
              Text('16'),
              Text('17'),
              Text('18'),
              Text('19'),
              Text('20'),
              Text('21')
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text('22'),
              Text('23'),
              Text('24'),
              Text('25'),
              Text('26'),
              Text('27'),
              Text('28')
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('29'), Text('30'), Text('31')],
            ),
          ]),
        ),
      ),
    );
  }
}
