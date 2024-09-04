import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String title;
  int index;
  VerseWidget(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Text(
          '$title [$index]',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodyMedium,
        ));
  }
}
