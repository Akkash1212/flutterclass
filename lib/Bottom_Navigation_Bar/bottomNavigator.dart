import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/bottomnavProvider.dart';

class BtomNavigator extends StatelessWidget {
  const BtomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final bnp = Provider.of<BottomNavProvider>(context);
    return BottomNavigationBar(
        currentIndex: bnp.pageIndex,
        onTap: (value) {
          bnp.changePageIndex(value);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'next')
        ]);
  }
}
