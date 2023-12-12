import 'package:equatable/equatable.dart';
import '../../../data/api/model/WeatherTodayModel.dart';
import '../../../data/api/model/WeatherHoursModel.dart';
import '../../../data/api/model/WeatherWeekModel.dart';

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
      {required this.weather, required this.hourlyWeather, required this.weekWeather});

  @override
  List<Object> get props => [weather, hourlyWeather, weekWeather];
}

class WeatherLoadFailure extends WeatherState {}