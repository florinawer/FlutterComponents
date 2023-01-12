import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 211, 124, 11);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: const Color.fromARGB(255, 180, 32, 32),

      //AppBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      //elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0),
      ),

      //temas para los inputs cuando no haces focus o cuando lo haces hace lo mismo
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ),

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
