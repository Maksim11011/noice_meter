import 'package:flutter/material.dart';
import 'package:noise_meter/bottom_bar/bottom_bar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Настройки'),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
