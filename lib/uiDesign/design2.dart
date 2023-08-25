import 'package:flutter/material.dart';

import 'design2Continer.dart';

class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Search"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 10,
            )
          ]),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "what do you want to listen to?",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              "Browse all",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            decoration: BoxDecoration(color: Colors.transparent),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 10),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 2,
              children: [
                SpotifyContiner(
                  type: "Podcast",
                  color: Colors.red[900],
                ),
                SpotifyContiner(
                  type: "Live Evnts",
                  color: Colors.purple[800],
                ),
                SpotifyContiner(
                  type: "Made For you",
                  color: Colors.indigo[900],
                ),
                SpotifyContiner(
                  type: "New releases",
                  color: Colors.pink[600],
                ),
                SpotifyContiner(
                  type: "Hindi",
                  color: Colors.red,
                ),
                SpotifyContiner(
                  type: "Punjabi",
                  color: Colors.purple,
                ),
                SpotifyContiner(
                  type: "Tamil ",
                  color: Colors.brown,
                ),
                SpotifyContiner(
                  type: "Pop",
                  color: Colors.green[900],
                ),
                SpotifyContiner(
                  type: "Love",
                  color: Colors.orange[300],
                ),
                SpotifyContiner(
                  type: "Party",
                  color: Colors.lightBlue[800],
                ),
                SpotifyContiner(
                  type: "Melody",
                  color: Colors.redAccent,
                ),
                SpotifyContiner(
                  type: "Tending",
                  color: Colors.lightBlue,
                ),
                SpotifyContiner(
                  type: "Radio",
                  color: Colors.brown[400],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
