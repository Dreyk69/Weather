import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/api/model/weather_hours_model.dart';
import '../../../data/api/model/weather_today_model.dart';
import '../../../data/api/model/weather_week_model.dart';
import '../../../data/api/service/weather_service.dart';
import 'weather_event.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final String cityName;
  WeatherBloc(this.cityName) : super(WeatherInitial()) {
    add(WeatherRequested(city: cityName));
  }

  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherRequested) {
      yield WeatherLoadInProgress();
      try {
        final Weather weather =
            await WeatherService.fetchCurrentWeather(query: event.city);
        final List<WeatherHoursModel> hourlyWeather =
            await WeatherService.fetchHourlyWeather(query: event.city);
        final List<WeatherWeekModel> weekWeather =
            await WeatherService.fetchWeekWeather(query: event.city);
        yield WeatherLoadSuccess(
            weather: weather,
            hourlyWeather: hourlyWeather,
            weekWeather: weekWeather);
      } catch (_) {
        yield WeatherLoadFailure();
      }
    }
  }
}
