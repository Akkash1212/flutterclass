import 'package:flutter/material.dart';
import 'package:flutterclass/Provider/provider.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import 'widgets/searchTextField.dart';

class LocalStorage extends StatefulWidget {
  LocalStorage({super.key});

  @override
  State<LocalStorage> createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  void initState() {
    super.initState();
    final nameProvider = Provider.of<ExProvider>(context, listen: false);
    nameProvider.getAll();
  }

  @override
  Widget build(BuildContext context) {
    final nameprovider = Provider.of<ExProvider>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            SerchTextField(),
            SizedBox(
              height: 20,
            ),
            Column(
              children: nameprovider.names.map((name) {
                return ListTile(
                  title: Text(
                    name,
                    style: TextStyle(color: Colors.white70, fontSize: 30),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
