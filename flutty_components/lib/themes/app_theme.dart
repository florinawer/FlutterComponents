import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 211, 124, 11);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: const Color.fromARGB(255, 180, 32, 32),

      //AppBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //se le pone aqui y todos los TextBotones se pasan a este color
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: const Color.fromARGB(255, 202, 55, 202),

      //AppBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
