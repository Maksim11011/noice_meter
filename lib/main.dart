//Feature branch

import 'package:flutter/material.dart';
import 'package:noise_meter_test/screens/home.dart';
import 'package:noise_meter_test/screens/info.dart';
import 'package:noise_meter_test/screens/saves.dart';
import 'package:noise_meter_test/screens/settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      routes: {
        "/": (context) => const Home(),
        "/saves": (context) => const Saves(),
        "/info": (context) => const Info(),
        "/settings": (context) => const Settings(),
      },
      initialRoute: "/",
    ),
  );
}
