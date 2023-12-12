import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/SettingsBloc.dart';
import 'bloc/SettingsEvent.dart';
import 'bloc/SettingsState.dart';

enum SingingCharacter { ru, eng }

class SettingsSreen extends StatelessWidget {
  const SettingsSreen({super.key});
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SettingBloc(SingingCharacter.ru),
        child: BlocBuilder<SettingBloc, SettingsState>(
          builder: (context, state) {
            if (state is SettingsRu) {
              SingingCharacter? character = state.character;
              return Scaffold(
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                      color: Colors.black,
                    ),
                    backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                    elevation: 0,
                    title: const Text(
                      'Настройки',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  body: Column(
                    children: [
                      ListTile(
                        title: const Text('Русский'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.ru,
                          groupValue: character,
                          onChanged: (SingingCharacter? value) {
                            BlocProvider.of<SettingBloc>(context)
                                .add(SettingsRequested(value:  SingingCharacter.ru));
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Английский'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.eng,
                          groupValue: character,
                          onChanged: (SingingCharacter? value) {
                            BlocProvider.of<SettingBloc>(context)
                                .add(SettingsRequested(value: SingingCharacter.eng));
                          },
                        ),
                      ),
                    ],
                  ));
            } else if (state is SettingsEng) {
              SingingCharacter? character = state.character;
              return Scaffold(
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                      color: Colors.black,
                    ),
                    backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                    elevation: 0,
                    title: const Text(
                      'Настройки',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  body: Column(
                    children: [
                      ListTile(
                        title: const Text('Русский'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.ru,
                          groupValue: character,
                          onChanged: (SingingCharacter? value) {
                            BlocProvider.of<SettingBloc>(context)
                                .add(SettingsRequested(value: SingingCharacter.ru));
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Английский'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.eng,
                          groupValue: character,
                          onChanged: (SingingCharacter? value) {
                            BlocProvider.of<SettingBloc>(context)
                                .add(SettingsRequested(value: SingingCharacter.eng));
                          },
                        ),
                      ),
                    ],
                  ));
            } else {
              return Scaffold(
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                      color: Colors.black,
                    ),
                    backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                    elevation: 0,
                    title: const Text(
                      'Настройки',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  body: const Center(
                    child: Text('Произошла ошибка при попытке перевода'),
                  ));
            } 
          },
        ));
  }
}
