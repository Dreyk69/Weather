

import 'package:flutter_bloc/flutter_bloc.dart';
import '../settingsScreen.dart';
import 'SettingsEvent.dart';
import 'SettingsState.dart';

class SettingBloc extends Bloc<SettingsEvent, SettingsState> {
  final SingingCharacter? value1;
  SettingBloc(this.value1) : super(SettingsInitial()) {
    add(SettingsRequested(value: value1));
  }


  Stream<SettingsState> changeLanguage(SettingsEvent event) async* {
    SingingCharacter? character;
    if (event is SettingsRequested) {
      try {
        character = event.value;
        if (character == SingingCharacter.ru) {
          yield SettingsRu(character: character);
        }
        yield SettingsEng(character: character);
        
      } catch (_) {
        yield SettingsError();
      }
    }
  }
}