// ignore_for_file: prefer_conditional_assignment, unnecessary_string_interpolations, depend_on_referenced_packages, unnecessary_import, unused_element, unnecessary_null_comparison, unused_local_variable

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/model/secondForcastModel.dart';
import 'package:http/http.dart' as http;

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitialState());

  /// singleton
  static WeatherCubit get(context) => BlocProvider.of(context);

  RealWeatheerModel? weatherData;

  //----------geting weather using dio--------
  // void getCurrentWeather() {
  //   emit(WeatherLoadingState());
  //   DioHelper.getWeather(
  //     path: path,
  //   ).then((value) {
  //     emit(WeatherSuccesState());

  //     weatherData = RealWeatheerModel.fromJson(value.data);

  //     print('data get succusfully..');
  //   }).catchError((e) {
  //     emit(WeatherErrorState(e));
  //     print(e.toString());
  //   });
  //   emit(WeatherSuccesState());
  // }

  ///////geting weather search data using dio------
  // void getSearchCurrentWeather({String? city}) {
  //   emit(WeatherLoadingState());
  //   DioHelper.getWeather(path: path, city: city!).then((value) {
  //     emit(WeatherSuccesState());

  //     weatherData = RealWeatheerModel.fromJson(value.data);

  //     print('data get succusfully..');
  //   }).catchError((e) {
  //     emit(WeatherErrorState(e));
  //     print(e.toString());
  //   });
  //   emit(WeatherSuccesState());
  // }
  //---------------------------caching Data local using hive once a time ---
  Future<void> cacheDataOnce(String key, var data) async {
    // Opening a box
    final box = await Hive.openBox<RealWeatheerModel>('weatherBox');
    try {
      await box.put(key, data); // Overwrites existing data if key exists
    } finally {
      await box.close(); // Always close the box to avoid memory leaks
    }
  }

  //--------------------------------get cached Data---------
  Future<RealWeatheerModel?> getCachedData(String key) async {
    final box = await Hive.openBox<RealWeatheerModel>('weatherBox');
    try {
      return box.get(key);
    } finally {
      await box.close(); // Always close the box
    }
  }

//----------------------getHttpWeather-----
//....................... Important Note............
// 1=> if api fails(status code !=200) to get data you will fallback to cached data.
// 2=> data chached will retriev also when catch error happed.

  bool isUsedCachedData = false;
  Future<void> getHttpWeather(
      {String city = 'shebin elkom', bool refresh = false}) async {
    emit(WeatherLoadingState());

    final url =
        'http://api.weatherapi.com/v1/forecast.json?key=59e33689b22e40fa929131146242011&q=$city&days=14&aqi=yes';

    try {
      // If refresh is true, clear the cache for this data
      if (refresh) {
        final box = await Hive.openBox('weatherBox');
        await box.delete('cashedWeatherData');
        await box.close();
      }

      // Fetch fresh data from the API
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        isUsedCachedData = false;
        final data = jsonDecode(response.body);

        // Parse and cache the new data
        weatherData = RealWeatheerModel.fromJson(data);
        await cacheDataOnce('cashedWeatherData', weatherData!);

        emit(WeatherSuccesState());
      } else {
        throw Exception('Failed to fetch weather data: ${response.statusCode}');
      }
    } catch (e) {
      // Fallback to cached data if refresh is not forced
      if (!refresh) {
        isUsedCachedData = true;
        final cachedData = await getCachedData('cashedWeatherData');
        if (cachedData != null) {
          weatherData = cachedData;
          emit(WeatherSuccesState());
          return;
        }
      }

      // Emit an error state if refresh is forced or no cache is available
      emit(WeatherErrorState(e.toString()));
    }
  }

  //-------------------------------------------------------get currnt Location on map press

  String currentLocation = ' shebin elkom';
  double currentLatitude = 30.466940;
  double currentLngitude = 30.934191;
  getCurrentLocation(double lat, double lng, Location) {
    currentLocation = Location;
    currentLatitude = lat;
    currentLngitude = lng;
    emit(GetCurrentLocationState());
  }

  TextEditingController searchCityController = TextEditingController();

  updateSearchCityController(String currentLocation) {
    searchCityController.text = currentLocation;
    emit(ChangeSearchControllerValueState());
  }

  //------------------------------convert DateTime  to days --
  String getDayName(DateTime date) {
    const days = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
    ];

    return days[date.weekday % 7];
  }

  String getDayFromDateString(String dateString) {
    //parse string into DataTime
    DateTime date = DateTime.parse(dateString);
    return getDayName(date);
  }

  //---------------------------drow charts----

  //------------
}
