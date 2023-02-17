import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c7_sun/home.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(c) => HomeScreen(),
      },
    );
  }
}