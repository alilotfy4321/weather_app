// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/controll/weather_cubit.dart';
import 'package:weather_app/view/searchPage/searchPage.dart';

TodayScreenAppBar(context, WeatherCubit cubit) => AppBar(
      //systemOverlayStyle: SystemUiOverlayStyle.dark,
      leading: IconButton(
        onPressed: () {
          cubit.changeTheme();
          print('mode change \t${cubit.isDark}');
        },
        icon: Icon(
          Icons.change_circle,
        ),
      ),
      title: Text(
        'Today Weather',
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
              icon: Icon(
                Icons.search,
              ),
            ),
          ),
        ),
      ],
    );
