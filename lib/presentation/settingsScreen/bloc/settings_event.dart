import 'package:equatable/equatable.dart';

import '../settings_screen.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent([List props = const []]);

  SingingCharacter? get event => null;
}

class SettingsCurrentPositionRequested extends SettingsEvent {
  const SettingsCurrentPositionRequested() : super();

  @override
  List<Object> get props => [];
}

class SettingsRequested extends SettingsEvent {
  final SingingCharacter value;

  const SettingsRequested({required this.value}) : super();

  @override
  List<SingingCharacter?> get props => [value];
}
