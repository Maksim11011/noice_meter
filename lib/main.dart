import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Raleway',
        ),
        home: const Scaffold(
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
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.info,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.settings,
                  ),
                ),
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
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.blue,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '43.1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: Color.fromARGB(255, 60, 60, 60),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Min 35.1',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Max76.3',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            InkWell(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              onTap: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: 75,
                child: const Icon(
                  Icons.save,
                ),
              ),
            ),
            InkWell(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              onTap: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: 75,
                child: const Icon(
                  Icons.mic,
                ),
              ),
            ),
            InkWell(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              onTap: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: 75,
                child: const Icon(
                  Icons.list,
                ),
              ),
            ),
            InkWell(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              onTap: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: 75,
                child: const Icon(
                  Icons.timer,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
