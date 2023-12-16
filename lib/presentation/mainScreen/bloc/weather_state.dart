import 'package:equatable/equatable.dart';

import '../../../data/api/model/weather_hours_model.dart';
import '../../../data/api/model/weather_today_model.dart';
import '../../../data/api/model/weather_week_model.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadInProgress extends WeatherState {}

class WeatherLoadSuccess extends WeatherState {
  final Weather weather;
  final List<WeatherHoursModel> hourlyWeather;
  final List<WeatherWeekModel> weekWeather;

  const WeatherLoadSuccess(
      {required this.weather,
      required this.hourlyWeather,
      required this.weekWeather});

  @override
  List<Object> get props => [weather, hourlyWeather, weekWeather];
}

class WeatherLoadFailure extends WeatherState {}
