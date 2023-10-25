import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class MyBottomSheet extends StatelessWidget {
  MyBottomSheet({super.key});
  final GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();
  TextEditingController textEditingController = TextEditingController();
  final GetStorage storage = GetStorage();

  void openBottomSheet() {
    skey.currentState?.showBottomSheet(
      (context) => Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.red,
        child: PageView(
          children: [
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: textEditingController,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Add to Local Storage',
                        style: TextStyle(fontSize: 30),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: skey,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bottom Sheet',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
                onPressed: () {
                  openBottomSheet();
                },
                child: Icon(
                  Icons.add,
                  size: 50,
                ))
          ],
        ),
      ),
    );
  }
}
