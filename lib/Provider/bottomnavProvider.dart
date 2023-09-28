import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier {
  int pageIndex = 0;
  changePageIndex(index) {
    pageIndex = index;
    notifyListeners();
  }
}
