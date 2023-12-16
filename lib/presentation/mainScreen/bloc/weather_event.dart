import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent([List props = const []]);
}

class WeatherCurrentPositionRequested extends WeatherEvent {
  const WeatherCurrentPositionRequested() : super();

  @override
  List<Object> get props => [];
}

class WeatherRequested extends WeatherEvent {
  final String city;

  const WeatherRequested({this.city = ""}) : super();

  @override
  List<Object> get props => [city];
}
