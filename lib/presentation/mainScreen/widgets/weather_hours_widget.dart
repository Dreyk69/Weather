import 'package:flutter/widgets.dart';
import '../../../data/api/model/weather_hours_model.dart';
import 'weather_card_hourse_widget.dart';

class HourlyWeather extends StatelessWidget {
  final List<WeatherHoursModel> hourlyWeather;

  const HourlyWeather({super.key, required this.hourlyWeather});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hourlyWeather.length,
            itemBuilder: (context, i) {
              return WeatherCardHourse(
                title: hourlyWeather[i].time.substring(11),
                temperature: hourlyWeather[i].temperatureHours.toInt(),
                iconCode: hourlyWeather[i].iconCodeHours,
                temperatureFontSize: 20,
              );
            }));
  }
}
