import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color mainColor = Color.fromARGB(255, 27, 111, 236);
  static ColorScheme mainColorScheme =
  ColorScheme.fromSeed(seedColor: mainColor);
  static const Color sceletonBackground = Color(0xFFF6F6F6);
  static const Color blackText = Color(0xFF161712);
  static const Color whiteText = Color(0xFFFAFFFF);
  static const Color graySubText = Color(0xFFBDBDBD);
  static const Color dividerColor = Color(0xFFF6F6F6);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const EdgeInsets containerPadding =
  EdgeInsets.symmetric(vertical: 10, horizontal: 16);
  static const Color gray = Color(0xFFE8E8E8);
}

class CustomCardTheme {
  static final cardDecoration = BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    borderRadius: BorderRadius.circular(10),
    // boxShadow: [
    //   BoxShadow(
    //       color: const Color.fromARGB(255, 201, 201, 201),
    //       spreadRadius: 1,
    //       blurRadius: 7,
    //       offset: const Offset(-1, 5)),
    // ]
  );
}

class TextStyles {
  static const TextStyle displayLarge = TextStyle(
      fontSize: 32, color: AppTheme.blackText, fontWeight: FontWeight.w600);
  static const TextStyle displayMedium =
  TextStyle(fontSize: 24, color: AppTheme.blackText);
  static const TextStyle displaySmall =
  TextStyle(fontSize: 18, color: AppTheme.blackText);
  static const TextStyle headlineLarge =
  TextStyle(fontSize: 24, color: AppTheme.blackText);
  static const TextStyle headlineMedium = TextStyle(
      fontSize: 20, color: AppTheme.blackText, fontWeight: FontWeight.w600);
  static const TextStyle headlineSmall = TextStyle(
      fontSize: 16, color: AppTheme.blackText, fontWeight: FontWeight.w600);
  static const TextStyle titleLarge =
  TextStyle(fontSize: 20, color: AppTheme.blackText);
  static const TextStyle subtitle =
  TextStyle(fontSize: 14, color: AppTheme.graySubText);
  static const TextStyle body =
  TextStyle(fontSize: 14, color: AppTheme.blackText);
  static const TextStyle caption =
  TextStyle(fontSize: 12, color: AppTheme.blackText);
}