import 'package:flutter/material.dart';
import 'package:noise_meter/bottom_bar/bottom_bar.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Информация'),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
