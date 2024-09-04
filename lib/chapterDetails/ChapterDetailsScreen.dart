
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_mon/chapterDetails/VerseWidget.dart';
import 'package:provider/provider.dart';

import '../MyThemeData.dart';
import '../providers/SettingsProvider.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter-details';

  const ChapterDetailsScreen({super.key});

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index); // 5s
    }
    return Container(
        decoration:BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.getBackgroundImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.chapterTitle),
          ),
          body: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Card(
                  margin: const EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return VerseWidget(verses[index], index + 1);
                      },
                      itemCount: verses.length,
                      separatorBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 48),
                            color: Theme.of(context).dividerColor,
                            width: double.infinity,
                            height: 2,
                          ),),
                ),
        ),
    );
  }

  List<String> verses = [];
  void loadFile(int index) async {
    // non-blocking
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split('\n');
    //print(fileContent);
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String chapterTitle;
  int index;
  ChapterDetailsArgs(this.chapterTitle, this.index);
}
