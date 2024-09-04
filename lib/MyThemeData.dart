import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightprimary = Color(0xFFB7935F);
  static const Color darkprimary = Color(0xFF141A2E);
  static const Color darkSecondary = Color(0xFFFACC1D);
  static ThemeData lightTheme =
  ThemeData(
      textTheme: const TextTheme(
        headlineSmall:TextStyle(
            fontSize: 25 ,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ) ,
        titleMedium: TextStyle(
            fontSize: 25 ,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),
        bodyMedium: TextStyle(
            fontSize: 20 ,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),
      ),
    cardTheme: CardTheme(
      surfaceTintColor: Colors.white,
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedItemColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      titleTextStyle: TextStyle(fontSize: 28, color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFB7935F),
      primary: const Color(0xFFB7935F),
      onPrimary: Colors.white,
      secondary: const Color(0xFFB7935F),
      onSecondary: Colors.black,
      background: Colors.white
    ),
    useMaterial3: true,
    dividerColor: lightprimary,
      bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white
  )
  );
  static ThemeData darkTheme =
  ThemeData(
    textTheme: const TextTheme(
        headlineSmall:TextStyle(
            fontSize: 25 ,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ) ,
        titleMedium: TextStyle(
              fontSize: 25 ,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
        bodyMedium: TextStyle(
            fontSize: 20 ,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),
      ),
    cardTheme: CardTheme(
      color: darkprimary,
      surfaceTintColor:Colors.transparent,
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: darkSecondary,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedItemColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      centerTitle: true,
      color: Colors.transparent,
      titleTextStyle: TextStyle(fontSize: 28, color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor:darkprimary ,
      primary: darkprimary,
      secondary: darkSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      background:darkprimary
    ),
    useMaterial3: true,
    dividerColor: darkSecondary,
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: darkprimary
    )
  );
}