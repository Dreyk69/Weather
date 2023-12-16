import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/weatherTodayModel.dart';
import '../model/weatherHoursModel.dart';
import '../model/weatherWeekModel.dart';

class WeatherService {
  static const String _apiKey = "b1875e390eee422cbf5122424231612";

  static Future<Weather> fetchCurrentWeather({query}) async {
    String url = 'http://api.weatherapi.com/v1/current.json?key=$_apiKey&q=$query&aqi=no&lang=ru';
    final response = await http.post(Uri.parse(url));

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  static Future<List<WeatherHoursModel>> fetchHourlyWeather({query}) async {
    var url =
        'http://api.weatherapi.com/v1/forecast.json?key=$_apiKey&q=$query&days=2&aqi=no&lang=ru';
    final response = await http.post(Uri.parse(url));

   if (response.statusCode == 200) {
     final jsonData = json.decode(response.body);
     final List<WeatherHoursModel> data = (jsonData['forecast']['forecastday'][0]['hour'] as List<dynamic>)
         .map((item) {
           return WeatherHoursModel.fromJson(item);
      }).toList();
      return data;
   } else {
     throw Exception('Failed to load weather');
   }
  }

  static Future<List<WeatherWeekModel>> fetchWeekWeather({query}) async {
    var url =
        'http://api.weatherapi.com/v1/forecast.json?key=$_apiKey&q=$query&days=3&aqi=no&lang=ru';
    final response = await http.post(Uri.parse(url));

   if (response.statusCode == 200) {
     final jsonData = json.decode(response.body);
     final List<WeatherWeekModel> dataWeek = (jsonData['forecast']['forecastday'] as List<dynamic>)
         .map((item) {
           return WeatherWeekModel.fromJson(item);
      }).toList();
      return dataWeek;
   } else {
     throw Exception('Failed to load weather');
   }
  }
}