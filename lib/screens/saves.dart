import 'package:flutter/material.dart';
import 'package:noise_meter/bottom_bar/bottom_bar.dart';

class Saves extends StatelessWidget {
  const Saves({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Сохраненные'),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
