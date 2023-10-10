import 'package:flutter/material.dart';
import 'package:flutterclass/Provider/provider.dart';
import 'package:flutterclass/factory_constructor/users.dart';

import 'package:provider/provider.dart';

import 'Bottom_Navigation_Bar/mainpage.dart';
import 'Provider/bottomnavProvider.dart';
import 'Provider/mainPage.dart';
import 'border.dart';
import 'Bottom_Navigation_Bar/bottomNavigator.dart';
import 'counter.dart';
import 'ecommous_app/shop.dart';
import 'factory_constructor/Container.dart';
import 'iceCreaamPage/page2.dart';
import 'iceCreaamPage/page3.dart';
import 'list_view/form.dart';
import 'list_view/tsk1.dart';
import 'list_view/tsk2.dart';
import 'list_view/tsk2Container.dart';
import 'list_view/tsk3.dart';

import 'buttons/tsk5.dart';
import 'list_view/txt4Container.dart';
import 'stack.dart';
import 'uiDesign/design2.dart';
import 'uiDesign/design3.dart';
import 'iceCreaamPage/page1.dart';
import 'uiDesign/layout2.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExProvider()),
        ChangeNotifierProvider(create: (context) => BottomNavProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Counter(),
      ),
    );
  }
}
