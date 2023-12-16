import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String title;
  final int temperature;
  final String iconCode;
  final double temperatureFontSize;
  final double iconScale;
  final int feelslike;

  const WeatherCard(
      {super.key,
      required this.title,
      required this.temperature,
      required this.iconCode,
      this.temperatureFontSize = 32,
      this.iconScale = 2,
      required this.feelslike});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Добавляем отступы
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Выровним по центру
          children: [
            Text(title),
            Image.network('http:$iconCode', scale: iconScale),
            // scale: iconScale
            Text(
              '$temperature°',
              style: TextStyle(
                  fontSize: temperatureFontSize, fontWeight: FontWeight.bold),
            ),
            Text('Ощущается как $feelslike°')
          ],
        ),
      ),
    );
  }
}
