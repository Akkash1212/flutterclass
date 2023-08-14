import 'package:flutter/material.dart';
import 'package:flutterclass/calander/lyt3_text.dart';

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Lyt3Text(
                    emttext: "Dashboard",
                  ),
                  Lyt3Text(
                    emttext: "Message",
                    boldtext: true,
                  ),
                  Lyt3Text(
                    emttext: "Utility Bills",
                  ),
                  Lyt3Text(
                    emttext: "Fund Transfer",
                  ),
                  Lyt3Text(
                    emttext: "Branches",
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 15),
                    alignment: Alignment.topRight,
                    height: 600,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    child: const Row(
                      children: [
                        Icon(Icons.message, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Message",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
