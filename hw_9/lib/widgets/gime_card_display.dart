import 'package:flutter/material.dart';
import 'package:hw_9/widgets/game_card2.dart';
import 'package:hw_9/widgets/games_card.dart';

class GamesCards extends StatelessWidget {
  const GamesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards(
              image: 'assets/im1ri.png',
              title: 'Cluth World',
              prise: '\$ 16.50',
              color1: Color.fromARGB(255, 201, 0, 134),
              color2: Color.fromARGB(10, 201, 0, 134),
            ),
            SizedBox(
              width: 35,
            ),
            Cards(
              image: 'assets/claon.png',
              title: 'Cyber Punk',
              prise: '\$ 21.10',
              color1: Color.fromARGB(255, 211, 236, 52),
              color2: Color.fromARGB(10, 211, 236, 52),
            ),
          ],
        ),
        SizedBox(
          width: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards1(
              image: 'assets/im33.png',
              title: 'Just Cause 6',
              prise: '\$ 18.10',
              color1: Color.fromARGB(255, 82, 255, 183),
              color2: Color.fromARGB(10, 82, 255, 183),
              left: 10,
              bottum: 26,
            ),
            SizedBox(
              width: 35,
            ),
            Cards1(
              image: 'assets/im4.png',
              title: 'Price Combat',
              prise: '\$ 11.10',
              color1: Color.fromARGB(255, 255, 17, 0),
              color2: Color.fromARGB(10, 255, 17, 0),
              left: -50,
              bottum: 27,
            ),
          ],
        ),
        SizedBox(
          width: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards1(
              image: 'assets/im5.png',
              title: 'Ninja Samurai',
              prise: '\$ 13.50',
              color1: Color.fromARGB(255, 255, 183, 0),
              color2: Color.fromARGB(10, 255, 183, 0),
              left: 5,
              bottum: 25,
            ),
            SizedBox(
              width: 35,
            ),
            Cards1(
              image: 'assets/im6.png',
              title: 'Soldier Strip',
              prise: '\$ 19.10',
              color1: Color.fromARGB(255, 0, 195, 255),
              color2: Color.fromARGB(10, 0, 195, 255),
              left: 10,
              bottum: 25,

            ),
          ],
        ),
      ],
    );
  }
}
