import 'package:flutter/material.dart';

class OptionsWeatherCardToday extends StatelessWidget {
  final String options;
  final String optionsMeaning;

  const OptionsWeatherCardToday(
      {super.key, required this.options, required this.optionsMeaning});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(options),
            Text(
              optionsMeaning,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
