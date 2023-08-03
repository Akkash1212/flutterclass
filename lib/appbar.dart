import 'package:flutter/material.dart';

class Appbarex extends StatelessWidget {
  const Appbarex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter App Bar"),
        leading: Icon(Icons.menu),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue])),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.print),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.camera),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 170,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.lightGreen,
                width: 10,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
