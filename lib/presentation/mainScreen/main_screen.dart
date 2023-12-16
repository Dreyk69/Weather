import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krosplatforma/presentation/settingsScreen/settings_screen.dart';

import 'bloc/weather_bloc.dart';
import 'bloc/weather_event.dart';
import 'bloc/weather_state.dart';
import 'widgets/delegate_widget.dart';
import 'widgets/main_screeen_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
   static const routeName = '/';

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  void navigatorForSetting() {
    Navigator.of(context).pushNamed(SettingsSreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc('Подольск'),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoadSuccess) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          navigatorForSetting();
                        },
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.my_location,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              BlocProvider.of<WeatherBloc>(context)
                                  .add(const WeatherCurrentPositionRequested());
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              showSearch(
                                  context: context,
                                  delegate: MySearchDelegate((query) {
                                    BlocProvider.of<WeatherBloc>(context)
                                        .add(WeatherRequested(city: query));
                                  }));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              body: MainScreenWrapper(
                weather: state.weather,
                hourlyWeather: state.hourlyWeather,
                weekWeather: state.weekWeather,
              ),
            );
          }
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.my_location,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      BlocProvider.of<WeatherBloc>(context)
                          .add(const WeatherCurrentPositionRequested());
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      showSearch(
                          context: context,
                          delegate: MySearchDelegate((query) {
                            BlocProvider.of<WeatherBloc>(context)
                                .add(WeatherRequested(city: query));
                          }));
                    },
                  )
                ],
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ));
        },
      ),
    );
  }
}