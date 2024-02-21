import 'package:flutter/material.dart';
import 'package:games_app/widget/custom_card.dart';

// This class represents a column of custom game cards.
class GamesCustom extends StatelessWidget {
  const GamesCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCard(
              image: 'images/cluth.png',
              title: 'Cluth World',
              price: ' \$ 16.50',
              BiscColor: Color.fromARGB(255, 201, 0, 134),
              Shadow: Color.fromARGB(10, 201, 0, 134),
              textTop: 150,
              textLeft: 30,
              textSize: 23,
              bottom: -5,
              left: 5,
            ),
            SizedBox(
              width: 35,
            ),
            CustomCard(
              image: 'images/cyber.png',
              title: 'Cyber Punk',
              price: '\$  21.10',
              BiscColor: Color.fromARGB(255, 211, 236, 52),
              Shadow: Color.fromARGB(10, 211, 236, 52),
             textTop: 150,
              textLeft: 30,
              textSize: 19,
              bottom: 20,
              left: -2,
            ),
          ],
        ),
        SizedBox(
          width: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCard(
              image: 'images/just.png',
              title: 'Just Cause 6',
              price: '\$   18.10',
              BiscColor: Color.fromARGB(255, 82, 255, 183),
              Shadow: Color.fromARGB(10, 82, 255, 183),
              textTop: 150,
              textLeft: 30,
              textSize: 19,
              bottom: 20,
              left: 10,
            ),
            SizedBox(
              width: 35,
            ),
            CustomCard(
              image: 'images/pricer.png',
              title:    'Price Combat',
              price: '  \$ 11.10',
              BiscColor: Color.fromARGB(255, 255, 17, 0),
              Shadow: Color.fromARGB(10, 255, 17, 0),
              textTop: 150,
              textLeft: 30,
              textSize: 19,
              bottom: 20,
              left: -40,
            ),
          ],
        ),
        SizedBox(
          width: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCard(
              image: 'images/ninja.png',
              title:   'Ninja Samurai',
              price: ' \$ 13.50',
              BiscColor: Color.fromARGB(255, 255, 183, 0),
              Shadow: Color.fromARGB(10, 255, 183, 0),
              textTop: 150,
              textLeft: 30,
              textSize: 19,
              bottom: 30,
              left: 10,
            ),
            SizedBox(
              width: 35,height: 60,
            ),
            CustomCard(
              image: 'images/solder.png',
              title: 'Soldier Strip',
              price: '  \$ 19.10',
              BiscColor: Color.fromARGB(255, 0, 195, 255),
              Shadow: Color.fromARGB(10, 0, 195, 255),
             textTop: 150,
              textLeft: 30,
              textSize: 19,
              bottom: 17,
              
              left: 16,
            ),
          ],
        ),
      ],
    );
  }
}

































