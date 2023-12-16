class WeatherHoursModel {
  final int temperatureHours;
  final String iconCodeHours;
  final String descriptionHours;
  final String time;
  

  WeatherHoursModel({
      required this.temperatureHours,
      required this.iconCodeHours,
      required this.descriptionHours,
      required this.time,
      });

  factory WeatherHoursModel.fromJson(Map<String, dynamic> json) {
    return WeatherHoursModel(
        temperatureHours: double.parse(json['temp_c'].toString()).toInt(),
        iconCodeHours: json['condition']['icon'],
        descriptionHours: json['condition']['text'],
        time: json['time']
    );
  }
}