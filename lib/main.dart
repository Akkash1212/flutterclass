import 'package:flutter/material.dart';
import 'package:flutterclass/homepage.dart';

import 'firstpage.dart';


void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(home: Homepage());
  }

}


