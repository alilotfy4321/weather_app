// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, prefer_const_constructors, unnecessary_null_comparison, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:weather_app/controll/weather_cubit.dart';
import 'package:weather_app/model/firstModel.dart';
import 'package:weather_app/model/secondForcastModel.dart';
import 'package:weather_app/view/todayweatherScreen.dart/todayWeather.dart';


late TodayWeather weatherData;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); //path in phone
  Hive.registerAdapter(RealWeatheerModelAdapter());
  Hive.registerAdapter(LocationAdapter());
  Hive.registerAdapter(CurrentAdapter());
  Hive.registerAdapter(ForecastAdapter());
  Hive.registerAdapter(ForecastdayAdapter());
  Hive.registerAdapter(ConditionAdapter());
  Hive.registerAdapter(AirQualityAdapter());
  Hive.registerAdapter(DayAdapter());
  Hive.registerAdapter(AstroAdapter());
  Hive.registerAdapter(HourAdapter());  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit()..getHttpWeather(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodayScreen(),
      ),
    );
  }
}
