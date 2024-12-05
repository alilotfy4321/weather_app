import 'package:flutter/material.dart';
import 'package:weather_app/core/styles/themes/dark_theme.dart/app_dark_colors.dart';

getDarkTheme()=>ThemeData(
   appBarTheme:AppBarTheme(
    backgroundColor: AppDarkColors.appBarColor,
    centerTitle: true,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color:AppDarkColors.appBartitleTextColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: AppDarkColors.appBarIconColor,
    ),
   ),
);