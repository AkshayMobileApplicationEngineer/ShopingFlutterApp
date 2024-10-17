import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.amber,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
        elevation: 0.0,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, // text color
          backgroundColor: Colors.amber, // background color
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.amber,
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
        ),
        titleLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      ),
    );
  }
}
