import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TemaAplikasi {
  static const Color primary = const Color(0xff4D194D);
  static const Color primaryD = const Color(0xff2E0F2E);

  static const Color secondary = const Color(0xff009FB7);
  static const Color secondaryD = const Color(0xff007C8F);

  static const Color warnaGelap = const Color(0xff050517);
  static const Color warnaCerah = const Color(0xfffffffc);

  static const Color abuGelap = const Color(0xff212124);
  static const Color abuCerah = const Color(0xff818181);

  static const double ukuranHeadline1 = 24;
  //TODO => Tuker aturan headline 2 sama bodytext 1
  static const double ukuranHeadline2 = 12;
  static const double ukuranHeadline3 = 16;
  static const double ukuranBodyText1 = 22;

  //Tema cerah

  static final ThemeData temaCerah = ThemeData(
    //TODO => Pindahin ke color scheme semua biar terstruktur kecil
    backgroundColor: warnaCerah,
    primaryColor: primary,
    appBarTheme: appbarLightTheme,
    bottomAppBarTheme: bottomAppbarLightTheme,
    cardColor: warnaCerah,
    textTheme: lightTextTheme,
    brightness: Brightness.light,
    colorScheme: lightScheme,
  );

  static final ColorScheme lightScheme = ColorScheme(
    primary: primary,
    primaryVariant: primaryD,
    secondary: secondary,
    secondaryVariant: secondaryD,
    surface: warnaCerah,
    background: Colors.green,
    error: Colors.red,
    onPrimary: warnaCerah,
    onSecondary: Colors.green,
    onSurface: Colors.green,
    onBackground: Colors.green,
    onError: Colors.green,
    brightness: Brightness.light, //doesnt work
  );

  static final AppBarTheme appbarLightTheme = AppBarTheme(
    backgroundColor: warnaCerah,
    elevation: 0,
    toolbarHeight: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.pink,
      statusBarBrightness: Brightness.light, //Work
    ),
  );

  static final BottomAppBarTheme bottomAppbarLightTheme = BottomAppBarTheme(
    color: primary,
    elevation: 0,
  );

  static final TextTheme lightTextTheme = TextTheme(
    bodyText1: _lightBodyText1,
    bodyText2: _lightBodyText2,
    headline1: _lightHeadline1,
    headline2: _lightHeadline2,
    headline3: _lightHeadline3,
  );

  static final TextStyle _lightHeadline1 = TextStyle(
    color: primary,
    fontSize: ukuranHeadline1,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle _lightHeadline2 = TextStyle(
    color: warnaGelap,
    fontSize: ukuranHeadline2,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle _lightHeadline3 = TextStyle(
    color: primary,
    fontSize: ukuranHeadline3,
  );

  static final TextStyle _lightBodyText1 = TextStyle(
    color: warnaGelap,
    fontSize: ukuranBodyText1,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle _lightBodyText2 = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );

  //Tema Gelap

  static final ThemeData temaGelap = ThemeData(
    backgroundColor: warnaGelap,
    primaryColor: secondary,
    appBarTheme: appbarDarkTheme,
    cardColor: warnaGelap,
    textTheme: darkTextTheme,
    colorScheme: darkScheme,
  );

  static final ColorScheme darkScheme = ColorScheme(
    primary: secondary,
    primaryVariant: secondaryD,
    secondary: primary,
    secondaryVariant: primaryD,
    surface: abuGelap,
    background: Colors.green,
    error: Colors.red,
    onPrimary: warnaCerah,
    onSecondary: Colors.green,
    onSurface: Colors.green,
    onBackground: Colors.green,
    onError: Colors.green,
    brightness: Brightness.dark, //doesnt work
  );

  static final AppBarTheme appbarDarkTheme = AppBarTheme(
    backgroundColor: warnaGelap,
    elevation: 0,
    toolbarHeight: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.pink,
      statusBarBrightness: Brightness.dark, //Work
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    bodyText1: _darkBodyText1,
    bodyText2: _darkBodyText2,
    headline1: _darkHeadline1,
    headline2: _darkHeadline2,
    headline3: _darkHeadline3,
  );

  static final TextStyle _darkHeadline1 = TextStyle(
    color: secondary,
    fontSize: ukuranHeadline1,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle _darkHeadline2 = TextStyle(
    color: warnaCerah,
    fontSize: ukuranHeadline2,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle _darkHeadline3 = TextStyle(
    color: secondary,
    fontSize: ukuranHeadline3,
  );

  static final TextStyle _darkBodyText1 = TextStyle(
    color: warnaCerah,
    fontSize: ukuranBodyText1,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle _darkBodyText2 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
}
