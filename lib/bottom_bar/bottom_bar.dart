import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    var itRout = ModalRoute.of(context)?.settings.name;

    ifActiveSavesButtom() {
      if (itRout == '/saves') {
        return const Color.fromARGB(255, 221, 218, 218);
      }
      return Colors.transparent;
    }

    ifActiveMicButtom() {
      if (itRout == '/') {
        return const Color.fromARGB(255, 221, 218, 218);
      }
      return Colors.transparent;
    }

    return Row(
      children: [
        // Кнопка - Сохранить
        InkWell(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
          onTap: () {},
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            height: 85,
            child: const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Icon(
                Icons.save,
              ),
            ),
          ),
        ),
        // Кнопка - Микрофон
        Material(
          color: ifActiveMicButtom(),
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
          child: InkWell(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(18),
            ),
            onTap: () {
              if (itRout != '/') {
                Navigator.of(context).pushNamed('/');
              }
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.mic,
                ),
              ),
            ),
          ),
        ),
        // Кнопка - Сохраненные
        Material(
          color: ifActiveSavesButtom(),
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
          child: InkWell(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(18),
            ),
            onTap: () {
              if (itRout != '/saves') {
                Navigator.of(context).pushNamed('/saves');
              }
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.list,
                ),
              ),
            ),
          ),
        ),
        // Кнопка - Таймер
        Material(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(18),
          ),
          child: InkWell(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(18),
            ),
            onTap: () {},
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 85,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.timer,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
