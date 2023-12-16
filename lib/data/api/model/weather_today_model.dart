class Weather {
  final String cityName;
  final int temperature;
  final String iconCode;
  final String description;
  final int humidity;
  final int cloud;
  final double uv;
  final double wind_kph;
  final double pressure_mb;
  final int feelslike;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.iconCode,
    required this.description,
    required this.humidity,
    required this.cloud,
    required this.uv,
    required this.wind_kph,
    required this.pressure_mb,
    required this.feelslike,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['location']['name'],
      temperature: double.parse(json['current']['temp_c'].toString()).toInt(),
      iconCode: json['current']['condition']['icon'],
      description: json['current']['condition']['text'],
      humidity: json['current']['humidity'],
      cloud: json['current']['cloud'],
      uv: json['current']['uv'],
      wind_kph: json['current']['wind_kph'],
      pressure_mb: json['current']['pressure_mb'],
      feelslike:
          double.parse(json['current']['feelslike_c'].toString()).toInt(),
    );
  }
}
