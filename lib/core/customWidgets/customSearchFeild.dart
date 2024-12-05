// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/controll/weather_cubit.dart';
import '../../view/mapp/map_location.dart';

//----------------------------------------- more usefull to use class to acheive dependency--------------------
class CustomSearchFeild extends StatelessWidget {
  WeatherCubit cubit;
  BuildContext context;

  CustomSearchFeild(this.cubit, this.context);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return TextFormField(
          controller: cubit.searchCityController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search City Name',
            prefixIcon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GettingPosition(),
                  ),
                );
              },
              icon: Icon(
                Icons.location_pin,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () async {
                  if (cubit.searchCityController.text.isNotEmpty) {
                    cubit
                        .getHttpWeather(city: cubit.searchCityController.text)
                        .then((value) {
                      Navigator.pop(context);
                      cubit.searchCityController.text = '';
                      print('currentLocation${cubit.currentLocation}');
                    });
                  } else {
                    await cubit
                        .getHttpWeather(city: cubit.currentLocation)
                        .then((value) {
                      Navigator.pop(context);
                      print('currentLocation${cubit.currentLocation}');
                    });
                  }
                },
                icon: Icon(Icons.search),
              ),
            ),
            // contentPadding: const EdgeInsets.only(
            //     left: 14.0, bottom: 8.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                25,
              ),
            ),
          ),
        );
      },
    );
  }
}
