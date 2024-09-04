import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/SettingsProvider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.light);
                Navigator.of(context).pop();
              },
              child:settingsProvider.isDarkEnabled()?
              getUnSelectedItem(AppLocalizations.of(context)!.light):
              getSelectedItem(AppLocalizations.of(context)!.light),),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
                Navigator.of(context).pop();
              },
              child:settingsProvider.isDarkEnabled()?
              getSelectedItem(AppLocalizations.of(context)!.dark):
              getUnSelectedItem(AppLocalizations.of(context)!.dark),)
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style:Theme.of(context).textTheme.titleMedium?.copyWith(
              color :Theme.of(context).colorScheme.secondary
          )
          ,),
        Icon(
          Icons.check,
        color:Theme.of(context).colorScheme.secondary ,
        )
      ],
    ) ;
  }

  Widget getUnSelectedItem(String text){
    return Row(
      children: [
        Text(
            text,
            style:Theme.of(context).textTheme.titleMedium),
      ],
    ) ;
  }
}
