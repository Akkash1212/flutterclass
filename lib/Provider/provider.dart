import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ExProvider extends ChangeNotifier {
  int count = 0;
  final names = [];
  final GetStorage storage = GetStorage();

  addName({required String name}) async {
    names.add(name);
    await storage.write('names', names);
    notifyListeners();
  }

  getAll() async {
    List allname = await storage.read('names');
    names.addAll(allname);
    notifyListeners();
  }

  add() {
    count += 1;
    notifyListeners();
  }

  sub() {
    count -= 1;
    notifyListeners();
  }
}
