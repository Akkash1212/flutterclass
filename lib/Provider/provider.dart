import 'package:flutter/material.dart';

class ExProvider extends ChangeNotifier {
  int count = 0;
  add() {
    count += 1;
    notifyListeners();
  }

  sub() {
    count -= 1;
    notifyListeners();
  }
}
