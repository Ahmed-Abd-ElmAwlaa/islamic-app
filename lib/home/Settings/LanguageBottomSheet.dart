import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/SettingsProvider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
                settingsProvider.changeLocale("en");
                Navigator.of(context).pop();
              },
             child: settingsProvider.currentLocale == "en"?
             getSelectedItem("English"):
             getUnSelectedItem("English"),
          ),
          InkWell(
                onTap: () {
                    settingsProvider.changeLocale("ar");
                    Navigator.of(context).pop();
                  },
                child:settingsProvider.currentLocale == "ar"?
                getSelectedItem("العربية"):
                getUnSelectedItem("العربية"),
          )
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style:Theme.of(context).textTheme.titleMedium?.copyWith(
            color :Theme.of(context).colorScheme.secondary
        ),
        ),
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
        Text(text,style:Theme.of(context).textTheme.titleMedium),
      ],
    ) ;
  }
}
