import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 31, 31, 31),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
  ),
  listTileTheme: ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.grey),
      bodySmall: TextStyle(color: Colors.cyanAccent)),
  dividerColor: Colors.white30,
  primarySwatch: Colors.yellow,
);
