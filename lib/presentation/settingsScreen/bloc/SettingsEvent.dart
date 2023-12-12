import 'package:equatable/equatable.dart';

import '../settingsScreen.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent([List props = const []]);
}

class SettingsCurrentPositionRequested extends SettingsEvent {
  const SettingsCurrentPositionRequested() : super();

  @override
  List<Object> get props => [];
}

class SettingsRequested extends SettingsEvent {
  final SingingCharacter? value;

  const SettingsRequested({this.value})
      : super();

  @override
  List<SingingCharacter?> get props => [value];
}