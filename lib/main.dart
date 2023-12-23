import 'package:flutter/material.dart';
import 'package:noise_meter/screens/home.dart';
import 'package:noise_meter/screens/info.dart';
import 'package:noise_meter/screens/saves.dart';
import 'package:noise_meter/screens/settings.dart';

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
