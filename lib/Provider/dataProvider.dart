import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  final fs = FirebaseFirestore.instance;
  List<Map<String, dynamic>> userList = [];

  addData(
      {String? collection,
      String? docId,
      required Map<String, dynamic> data}) async {
    final col = fs.collection(collection ?? "Default Collecion");
    if (docId != null) {
      await col.doc(docId).set(data);
    } else {
      await col.add(data);
    }
    getAllData(collecion: collection ?? "Default Collection");
  }

  getAllData({String? collecion}) async {
    final allData =
        await fs.collection(collecion ?? "Default Collection").get();
    List<Map<String, dynamic>> auser = [];
    for (var i in allData.docs) {
      auser.add(i.data());
    }
    userList = auser;
    notifyListeners();
  }
}
