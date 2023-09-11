import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer(
      {super.key, this.quantity = 1, this.price = 20, this.title = ""});
  final int quantity;
  final double price;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Image.asset('assets/image/Popsicle1.png'),
            ),
            const Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Blue Moon Popsice Stick',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        Icon(
                          Icons.delete,
                          color: Colors.deepOrangeAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ThisContainer(
                          text: "1",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ThisContainer(
                          text: "3.99",
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ThisContainer extends StatelessWidget {
  const ThisContainer({super.key, this.text = ''});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: Colors.deepOrangeAccent)),
        child: Text(
          text,
          style: TextStyle(color: Colors.deepOrangeAccent),
        ));
  }
}
