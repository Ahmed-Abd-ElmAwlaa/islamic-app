import 'package:flutter/material.dart';

class PrayingListViewItem extends StatelessWidget {
  String prayingName;
  String prayingTime;
  PrayingListViewItem({super.key,required this.prayingName,required this.prayingTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24
      ),
      child: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(prayingName),
            Text(prayingTime),
            const Icon(Icons.toggle_off,size: 40,)
          ],
        ),
      ),
    );
  }
}
