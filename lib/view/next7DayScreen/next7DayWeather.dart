// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/controll/weather_cubit.dart';
import 'package:weather_app/view/next7DayScreen/apBar.dart';
import 'package:weather_app/core/customWidgets/firstCardWidget.dart';
import 'package:weather_app/view/next7DayScreen/selected_future_day.dart';

class Next7DayScreen extends StatelessWidget {
  const Next7DayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        //--------------data---------------
        var cubit = WeatherCubit.get(context);
        var model = cubit.weatherData!;
        var forcastDate = model.forecast!.forecastday!;
//---------------------------------------------------------------
        return Scaffold(
          // backgroundColor: Colors.black,
          appBar: next7DayAppBar(context),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomFirstScreenCard(context, cubit.weatherData!, cubit),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 163, 174, 180),
                    child: Text(
                  'press Any Day To get More Details..',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        forcastDate.length - 1,
                        (index) => InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedFutureDay(
                                  indexData: forcastDate[index],
                                  day: cubit.getDayFromDateString(
                                      forcastDate[index + 1].date!),
                                ),
                              )),
                          child: Container(
                            margin: EdgeInsets.all(15),
                            height: 100,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 64, 77, 83),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 7, 9, 128)
                                        .withOpacity(0.5), // Shadow color
                                    spreadRadius: 5, // Spread radius
                                    blurRadius: 10, // Blur radius
                                    offset: Offset(
                                        0, 4), // Offset in x and y directions
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //index +1 because i dont need the current day in the list and munis list by 1.

                                  Text(
                                    cubit.getDayFromDateString(
                                        forcastDate[index + 1].date!),
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),

                                  CachedNetworkImage(
                                    imageUrl:
                                        'http:${forcastDate[index + 1].day!.condition!.icon!}',
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),

                                  Text(
                                    '${forcastDate[index + 1].day!.condition!.text!}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
