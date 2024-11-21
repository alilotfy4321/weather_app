// ignore_for_file: camel_case_types, must_be_immutable

part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitialState extends WeatherState {
  
}

class WeatherLoadingState extends WeatherState {}

class WeatherSuccesState extends WeatherState {}

class WeatherCachedDataState extends WeatherState {
  bool isCachedData;
  WeatherCachedDataState(this.isCachedData);
}

class WeatherErrorState extends WeatherState {
  final error;
  WeatherErrorState(this.error);
}

class WeatherDateTimeState extends WeatherState {}

class GetCurrentLocationState extends WeatherState {}

class ChangeSearchControllerValueState extends WeatherState {}
