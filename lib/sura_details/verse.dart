import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  String verse;

  VerseItem(this.verse);

  @override
  Widget build(BuildContext context) {
    return Text(
      verse,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(letterSpacing: 1, fontStyle: FontStyle.italic),
      textAlign: TextAlign.center,
    );
  }
}
