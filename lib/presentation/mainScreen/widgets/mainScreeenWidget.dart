// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:krosplatforma/presentation/mainScreen/widgets/WeatherWeek.dart';

import '../../../data/api/model/WeatherTodayModel.dart';
import '../../../data/api/model/WeatherHoursModel.dart';
import '../../../data/api/model/WeatherWeekModel.dart';
import 'OptionsWeatherToday.dart';
import 'WeatherCardToday.dart';
import 'WeatherHours.dart';

class MainScreenWrapper extends StatelessWidget {
  final Weather weather;
  final List<WeatherHoursModel> hourlyWeather;
  final List<WeatherWeekModel> weekWeather;

  const MainScreenWrapper(
      {super.key,
      required this.weather,
      required this.hourlyWeather,
      required this.weekWeather});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Text(
              weather.cityName,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(weather.description),
            const SizedBox(height: 5),
            WeatherCard(
              title: "Сейчас",
              temperature: weather.temperature,
              iconCode: weather.iconCode,
              temperatureFontSize: 64,
              iconScale: 1,
              feelslike: weather.feelslike,
            ),
            const SizedBox(height: 5),
            HourlyWeather(hourlyWeather: hourlyWeather),
            const SizedBox(height: 5),
            WeekWeather(weekWeather: weekWeather),
            const SizedBox(height: 40),
            OptionsWeatherToday(weather: weather)
          ],
        ),
      ],
    );
  }
}
