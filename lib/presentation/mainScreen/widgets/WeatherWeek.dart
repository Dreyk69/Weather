import 'package:flutter/material.dart';
import '../../../data/api/model/WeatherWeekModel.dart';
import 'WeatherCardForWeek.dart';

class WeekWeather extends StatelessWidget {
  final List<WeatherWeekModel> weekWeather;

  const WeekWeather({super.key, required this.weekWeather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[0].data,
            temperatureDay: weekWeather[0].temperatureDay.toInt(),
            temperatureNight: weekWeather[0].temperatureNight.toInt(),
            iconCodeDay: weekWeather[0].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[1].data,
            temperatureDay: weekWeather[1].temperatureDay.toInt(),
            temperatureNight: weekWeather[1].temperatureNight.toInt(),
            iconCodeDay: weekWeather[1].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[2].data,
            temperatureDay: weekWeather[2].temperatureDay.toInt(),
            temperatureNight: weekWeather[2].temperatureNight.toInt(),
            iconCodeDay: weekWeather[2].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[3].data,
            temperatureDay: weekWeather[3].temperatureDay.toInt(),
            temperatureNight: weekWeather[3].temperatureNight.toInt(),
            iconCodeDay: weekWeather[3].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[4].data,
            temperatureDay: weekWeather[4].temperatureDay.toInt(),
            temperatureNight: weekWeather[4].temperatureNight.toInt(),
            iconCodeDay: weekWeather[4].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[5].data,
            temperatureDay: weekWeather[5].temperatureDay.toInt(),
            temperatureNight: weekWeather[5].temperatureNight.toInt(),
            iconCodeDay: weekWeather[5].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
        Card(
          child: WeatherCardForWeek(
            data: weekWeather[6].data,
            temperatureDay: weekWeather[6].temperatureDay.toInt(),
            temperatureNight: weekWeather[6].temperatureNight.toInt(),
            iconCodeDay: weekWeather[6].iconCodeDay,
            temperatureFontSize: 14,
          ),
        ),
      ],
    );
  }
}
