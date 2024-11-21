// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/controll/weather_cubit.dart';
import 'package:weather_app/view/mapp/current_position.dart';
import 'package:weather_app/view/mapp/show_map.dart';
class GettingPosition extends StatelessWidget {
  GettingPosition() {
    checkLocationPermessin();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
      var cubit = WeatherCubit.get(context);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Location',
          ),
        ),
        body: ShowMap(cubit),
      );
    });
  }
}
