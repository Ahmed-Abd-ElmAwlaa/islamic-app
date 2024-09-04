import 'package:flutter/material.dart';
import '../../HadethDetails/HadethDetailsScreen.dart';
import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth ;
  HadethTitleWidget(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
           arguments:hadeth,
        );
      },
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
