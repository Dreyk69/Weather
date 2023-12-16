import 'package:flutter_bloc/flutter_bloc.dart';
import '../settings_screen.dart';
import 'settings_event.dart';
import 'settings_state.dart';

class SettingBloc extends Bloc<SettingsEvent, SettingsState> {
  final SingingCharacter? value;

  SettingBloc(this.value) : super(SettingsInitial()) {
    print('Море');
    on<SettingsEvent>(_changeLanguage);
  }

  void _changeLanguage(SettingsEvent event, Emitter<SettingsState> emit) {
    SingingCharacter? character;
    if (event is SettingsRequested) {
      try {
        character = event.value;
        if (character == SingingCharacter.ru) {
          emit(SettingsRu(character: character));
        }
        emit(SettingsEng(character: character));
      } catch (_) {
        emit(SettingsError());
      }
    }
  }
}

// void _onGetWeatherEvent(
//     GetWeather event,
//     Emitter<WeatherState> emit,
//   ) async {
//     emit(WeatherIsLoading());
//     try {
//       Weather weather = await _weatherRemoteDataImpl.getWeather(event.city);
//       emit(WeatherIsLoaded(weather));
//     } catch (e) {
//       emit(WeatherError(e.toString()));
//     }
//   }
