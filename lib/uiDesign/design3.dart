import 'package:flutter/material.dart';

import '../my_login_page/design3Container.dart';

class Design3 extends StatelessWidget {
  const Design3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black38,
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.black38),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '   Hello,',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Text(
              '   Mr.Anthony Burke,',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.green,
              height: 200,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.indigo[800],
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Design3Container(),
                              Design3Container(),
                              Design3Container(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Dropbox',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white70),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '60gb',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white54),
                              ),
                              Text(
                                '100gb',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white54),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [Colors.yellow, Colors.white],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Design3Container(),
                              Design3Container(),
                              Design3Container(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '5gb',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black),
                              ),
                              Text(
                                '10gb',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.green,
                                        Colors.yellow,
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.indigo[800],
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Design3Container(),
                              Design3Container(),
                              Design3Container(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Dropbox',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white70),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '60gb',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white54),
                              ),
                              Text(
                                '100gb',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white54),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [Colors.yellow, Colors.white],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '     Co-owners',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
