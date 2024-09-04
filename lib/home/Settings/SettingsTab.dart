import 'package:flutter/material.dart';
import 'package:islami_c9_mon/home/Settings/LanguageBottomSheet.dart';
import 'package:islami_c9_mon/home/Settings/ThemeBottomSheet.dart';
import 'package:provider/provider.dart';
import '../../providers/SettingsProvider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 62,),
          Text(AppLocalizations.of(context)!.theme),
          const SizedBox(height: 2,),
          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1
                )
              ),
              child:Text(settingsProvider.isDarkEnabled()?
                  AppLocalizations.of(context)!.dark:
                  AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.titleMedium),
            ),
          ),
          const SizedBox(height: 8,),
          Text(settingsProvider.currentLocale == "en"?
          "Language":"اللغة"),
          const SizedBox(height: 2,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).dividerColor,
                      width: 1
                  )
              ),
              child:Text(settingsProvider.currentLocale == "en"?
              "English":"العربية",style: Theme.of(context).textTheme.titleMedium),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context,
        builder: (context) => LanguageBottomSheet());
  }
  void showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (context) =>ThemeBottomSheet());
  }
}
