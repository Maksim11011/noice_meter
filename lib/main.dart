import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(child: NoiceMeter()),
        )),
  );
}

class NoiceMeter extends StatelessWidget {
  const NoiceMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                color: Colors.red,
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.green,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                width: 400,
                height: 50,
                color: Colors.black54,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 393 / 4,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 393 / 4,
              height: 50,
              color: Colors.lightGreen,
            ),
            Container(
              width: 393 / 4,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 393 / 4,
              height: 50,
              color: Colors.lightGreen,
            ),
          ],
        )
      ],
    );
  }
}
