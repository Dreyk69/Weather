import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

// Строка погоды для недели
class WeatherCardForWeek extends StatelessWidget {
  final double temperatureFontSize;
  final double iconScale;
  final int temperatureDay;
  final int temperatureNight;
  final String iconCodeDay;
  final String data;

  const WeatherCardForWeek({super.key, required this.iconCodeDay, required this.temperatureFontSize, this.iconScale = 2, required this.temperatureDay, required this.temperatureNight, required this.data});

  @override
  Widget build(BuildContext context) {
    var date = Jiffy.parse(data).EEEE;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(date),
            Image.network('http:$iconCodeDay', scale: iconScale),
            // scale: iconScale
            Text(
              '$temperatureDay°/$temperatureNight°',
              style: TextStyle(fontSize: temperatureFontSize, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
      ),
    );
  }
}