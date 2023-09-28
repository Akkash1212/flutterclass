import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterclass/Bottom_Navigation_Bar/apointment.dart';
import 'package:flutterclass/Bottom_Navigation_Bar/shop.dart';
import 'package:provider/provider.dart';

import '../Provider/bottomnavProvider.dart';
import 'bottomNavigator.dart';

class BtmNavi extends StatelessWidget {
  BtmNavi({super.key});
  final List<Widget> pages = [Shop(), Appointment()];

  @override
  Widget build(BuildContext context) {
    final bp = Provider.of<BottomNavProvider>(context);
    return Scaffold(
      bottomNavigationBar: BtomNavigator(),
      body: pages[bp.pageIndex],
    );
  }
}
