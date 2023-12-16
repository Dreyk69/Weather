class WeatherWeekModel {
  final int temperatureDay;
  final int temperatureNight;
  final String iconCodeDay;
  final String data;

  WeatherWeekModel({
    required this.temperatureDay,
    required this.temperatureNight,
    required this.iconCodeDay,
    required this.data,
  });

  factory WeatherWeekModel.fromJson(Map<String, dynamic> json) {
    return WeatherWeekModel(
        temperatureDay:
            double.parse(json['day']['maxtemp_c'].toString()).toInt(),
        temperatureNight:
            double.parse(json['day']['mintemp_c'].toString()).toInt(),
        iconCodeDay: json['day']['condition']['icon'],
        data: json['date']);
  }
}
