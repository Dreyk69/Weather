import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'internal/application.dart';

Future<void> main() async {
  await Jiffy.setLocale('ru');
  runApp(const Application());
}