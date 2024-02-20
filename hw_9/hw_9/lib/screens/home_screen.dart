import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hw_9/widgets/game_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 250,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0x14ffffff),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "icons/akar-icons_search.png",
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0x14ffffff),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Image.asset('icons/Notification.png'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(minWidth: 60, maxHeight: 30),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Color(0xffDFFF1E),
                          width: 3,
                          style: BorderStyle.solid,
                        ))),
                        child: const Text(
                          "Popular",
                          style: TextStyle(
                              color: Color(0xffDFFF1E),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Trending",
                        style: TextStyle(
                          color: Color(0xff868686),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "New Launch",
                        style: TextStyle(
                          color: Color(0xff868686),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Free Games",
                        style: TextStyle(
                          color: Color(0xff868686),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameCard(
                    color: const Color(0xffC90085),
                    imagepath: 'images/CluthWorld.png',
                    name: 'Cluth World',
                    price: '16.50',
                  ),
                  GameCard(
                    color: const Color(0xffD2EC34),
                    imagepath: 'images/CyberPunk.png',
                    name: 'Cyber Punk',
                    price: '21.10',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameCard(
                    color: const Color(0xff52FFB6),
                    imagepath: 'images/JustCause6.png',
                    name: 'Just Cause 6',
                    price: '18.10',
                  ),
                  GameCard(
                    color: const Color(0xffFF0F00),
                    imagepath: 'images/PriceCombat.png',
                    name: 'Price Combat',
                    price: '11.10',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameCard(
                    color: const Color(0xffFFB800),
                    imagepath: 'images/NinjaSamurai.png',
                    name: 'Ninja Samurai',
                    price: '13.50',
                  ),
                  GameCard(
                    color: const Color(0xff00C2FF),
                    imagepath: 'images/SoldierStrip.png',
                    name: 'Soldier Strip',
                    price: '19.10',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
