import 'package:flutter/material.dart';

/*ChangeNotifier is a :
-observable object
-subject
-provider
*/
class SettingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = "en";

  void changeTheme(ThemeMode newTheme){
    if(currentTheme == newTheme) {
      return;
    }
    currentTheme = newTheme;
    notifyListeners();
  }

  String getBackgroundImage(){
    return currentTheme == ThemeMode.dark?
         'assets/images/dark_bg.png'
        :'assets/images/main_background.png';
  }

  bool isDarkEnabled(){
    return currentTheme == ThemeMode.dark;
  }

  void changeLocale(String newLocale){
    if(currentLocale == newLocale)return;
    currentLocale = newLocale;
    notifyListeners();
  }
}