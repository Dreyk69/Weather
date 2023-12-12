import 'package:flutter/material.dart';
import 'package:krosplatforma/presentation/settingsScreen/settingsScreen.dart';

import '../presentation/mainScreen/mainScreen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: Colors.white,
        primaryColor: Colors.white,
      ),
      home: const MainScreen(),
      routes: {
        SettingsSreen.routeName:(context) => SettingsSreen(),
      },
      initialRoute: '/',
    );
  }
}
