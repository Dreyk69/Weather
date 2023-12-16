import 'package:equatable/equatable.dart';
import '../settingsScreen.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<SingingCharacter?> get props => [];
}

class SettingsInitial extends SettingsState {}

class SettingsRu extends SettingsState {
  final SingingCharacter? character;

  SettingsRu({required this.character});

  @override
  List<SingingCharacter?> get props => [character];
}

class SettingsEng extends SettingsState {
  final SingingCharacter? character;

  const SettingsEng({required this.character});

  @override
  List<SingingCharacter?> get props => [character];
}

class SettingsError extends SettingsState {
}