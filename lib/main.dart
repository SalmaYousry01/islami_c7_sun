import 'package:flutter/material.dart';
import 'package:islami_c7_sun/hadeth_details/hadeth_details.dart';
import 'package:islami_c7_sun/home/home.dart';
import 'package:islami_c7_sun/my_theme.dart';
import 'package:islami_c7_sun/sura_details/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
        SuraDetailsScreen.routeName: (c) => SuraDetailsScreen(),
        HadethDetails.routeName:(c)=>HadethDetails(),
      },
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
