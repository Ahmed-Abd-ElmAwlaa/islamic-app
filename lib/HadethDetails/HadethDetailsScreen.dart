import 'package:flutter/material.dart';
import 'package:islami_c9_mon/home/hadeth/Hadeth.dart';
import 'package:provider/provider.dart';

import '../MyThemeData.dart';
import '../providers/SettingsProvider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadethDetails";

  const HadethDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                child: SingleChildScrollView(
                  child: Text(
                    args.content,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
