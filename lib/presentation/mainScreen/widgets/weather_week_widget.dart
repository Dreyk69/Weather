import 'package:flutter/material.dart';
import '../../../data/api/model/weather_week_model.dart';
import 'weather_card_for_week_widget.dart';

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
      ],
    );
  }
}
