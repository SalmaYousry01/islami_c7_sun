import 'package:flutter/material.dart';
import 'package:islami_c7_sun/home/ahadeth.dart';
import 'package:islami_c7_sun/my_theme.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'Hadeth_Details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          color: Colors.grey[300],
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              border: Border.all(color: MyThemeData.colorGold, width: 2)),
          child: ListView.builder(
              itemCount: args.content.length,
              itemBuilder: (context, index) {
                return Text(
                  args.content[index],
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                );
              }),
        ),
      )
    ]);
  }
}
