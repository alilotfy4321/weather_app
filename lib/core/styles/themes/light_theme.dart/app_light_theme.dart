import 'package:flutter/material.dart';
import 'package:weather_app/core/styles/themes/light_theme.dart/app_light_colors.dart';

getLightTheme()=>ThemeData(
   appBarTheme:AppBarTheme(
    backgroundColor: AppLightColors.appBarColor,
    centerTitle: true,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color:AppLightColors.appBartitleTextColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: AppLightColors.appBarIconColor,
    ),
   ),
);