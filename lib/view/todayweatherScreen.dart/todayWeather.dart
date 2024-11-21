// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, unnecessary_null_comparison

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/controll/weather_cubit.dart';
import 'package:weather_app/customWidgets/customAirQuality.dart';
import 'package:weather_app/view/next7DayScreen/next7DayWeather.dart';
import 'package:weather_app/view/reprtScreen/reportscreen.dart';
import 'package:weather_app/view/todayweatherScreen.dart/apBar.dart';
import 'package:weather_app/customWidgets/firstCardWidget.dart';
import 'package:weather_app/view/todayweatherScreen.dart/scroolPart/scrollCard.dart';

class TodayScreen extends StatelessWidget {
  TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
      //----------variables----------------------------

      var cubit = WeatherCubit.get(context);
      var model = cubit.weatherData!;
      var chartAvgTempValues = model.forecast!.forecastday![0].hour!;
      //--------------------------------------------
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: TodayScreenAppBar(context),
        body: (state is WeatherLoadingState)
            ? Center(child: CircularProgressIndicator())
            : (model != null)
                ? SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFirstScreenCard(
                          context,
                          model,
                          cubit,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Next7DayScreen()));
                                },
                                child: Text(
                                  'Next 14 days',
                                ),
                              ),
                            ],
                          ),
                        ),
                        ScrollingCard(model, cubit),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,),
                          child: const Text(
                            'Chart Temp All The Day..\n Press on  any chart area point  to get \n  The\' Tempreture \' value.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 60, 64, 66),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 25,
                              minY: 0,
                              maxY: 40,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: List.generate(
                                    24,
                                    (index) => FlSpot(
                                        index.toDouble(),
                                        chartAvgTempValues[index]
                                            .tempC!
                                            .toDouble()),
                                  ),
                                  isCurved: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'AirQuality',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ReportScreen()));
                                },
                                child: Text(
                                  'View Report',
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        CustomAirQuality(model),
                      ],
                    ),
                  )
                : Center(child: CircularProgressIndicator()),
      );
    });
  }
}
