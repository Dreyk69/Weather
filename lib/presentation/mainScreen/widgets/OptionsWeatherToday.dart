import 'package:flutter/material.dart';

import '../../../data/api/model/WeatherTodayModel.dart';
import 'OptionsWeatherCardToday.dart';

class OptionsWeatherToday extends StatelessWidget {
  final Weather weather;
  const OptionsWeatherToday({super.key, required this.weather});

  double pressure() {
    var pressure = weather.pressure_mb * 0.750064;
    return pressure;
  }

  String uvOutput() {
    String uv;
    if (weather.uv > 0.0 && weather.uv < 3.0) {
      uv = 'Низкий';
      return uv;
    } else if (weather.uv > 3.0 && weather.uv < 6.0) {
      String uv = 'Средний';
      return uv;
    } else if (weather.uv > 6.0 && weather.uv < 8.0) {
      String uv = 'Высокий';
      return uv;
    }  else if (weather.uv > 8.0 && weather.uv < 10.0) {
      String uv = 'Очень высокий';
      return uv;
    } else {
      String uv = 'Экстримальный';
      return uv;
    }
  }

  @override
  Widget build(BuildContext context) {
    var pressureToday = pressure().toInt();
    String uvToday = uvOutput();
    return Column(
      children: [
        Card(
          child: OptionsWeatherCardToday(
            options: 'Влажность',
            optionsMeaning: '${weather.humidity}%',
          ),
        ),
        Card(
          child: OptionsWeatherCardToday(
            options: 'Видимость',
            optionsMeaning: '${weather.cloud}%',
          ),
        ),
        Card(
          child: OptionsWeatherCardToday(
            options: 'УФ-индекс',
            optionsMeaning: uvToday,
          ),
        ),
        Card(
          child: OptionsWeatherCardToday(
            options: 'Скорость ветра',
            optionsMeaning: '${weather.wind_kph}км/ч',
          ),
        ),
        Card(
          child: OptionsWeatherCardToday(
            options: 'Давление',
            optionsMeaning: '$pressureToday мм рт. ст.',
          ),
        ),
      ],
    );
  }
}
