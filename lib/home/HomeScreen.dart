import 'package:flutter/material.dart';
import 'package:islami_c9_mon/MyThemeData.dart';
import 'package:islami_c9_mon/home/Settings/SettingsTab.dart';
import 'package:islami_c9_mon/home/hadeth/HadethTab.dart';
import 'package:islami_c9_mon/home/quran/QuranTab.dart';
import 'package:islami_c9_mon/home/radio/RadioTab.dart';
import 'package:islami_c9_mon/home/tasbeh/TasbehTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/SettingsProvider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImage()),
              fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:Text(AppLocalizations.of(context)!.app_name
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          currentIndex: selectedTabIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }
  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(),SettingsTab()];
}
