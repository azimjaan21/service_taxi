import 'package:flutter/material.dart';

ThemeData get theme {
  return ThemeData(
    primarySwatch: Colors.deepPurple,
    colorScheme: ThemeData().colorScheme.copyWith(
          secondary: Colors.blueGrey,
        ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThemeData().textTheme.copyWith(
          bodyLarge: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
          bodyMedium: const TextStyle(
            fontSize: 15,
            color: Colors.black87,
          ),
          displayLarge: const TextStyle(
            fontSize: 45,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1302FF),
        elevation: 0,
        enableFeedback: true,
        shadowColor: Colors.transparent,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
