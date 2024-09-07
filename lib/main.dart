import 'package:flutter/material.dart';
import 'package:islami_c9_mon/chapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_c9_mon/home/HomeScreen.dart';
import 'package:islami_c9_mon/providers/SettingsProvider.dart';
import 'package:islami_c9_mon/splash_screen.dart';
import 'package:provider/provider.dart';
import 'HadethDetails/HadethDetailsScreen.dart';
import 'MyThemeData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create:(context) =>SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    /*
    search for settings provider inside widgets tree
    * */
    SettingsProvider settingsProvider =
    Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme:MyThemeData.darkTheme ,
      themeMode: settingsProvider.currentTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SplashScreen.routeName: (_) => const SplashScreen(),
        ChapterDetailsScreen.routeName: (_) => const ChapterDetailsScreen(),
        HadethDetailsScreen.routeName : (_) => const HadethDetailsScreen()
      },
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      //locale: const Locale("ar"),
      locale:Locale(settingsProvider.currentLocale),

    );
  }
}
