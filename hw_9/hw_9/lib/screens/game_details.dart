import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hw_9/extension/screen_handler.dart';

class GameDetailsScreen extends StatelessWidget {
  const GameDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: context.getWidth(),
              height: context.getWidth() * 0.90,
              child: Stack(
                children: [
                  Container(
                      width: context.getWidth() / 1.6,
                      height: context.getWidth() * 0.83,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0, -1),
                            end: Alignment(0, 2),
                            colors: [Color(0xffFF0000), Color(0x009eae3e)],
                            stops: [0, 1],
                          ))),
                  Positioned(
                    right: -30,
                    top: -30,
                    child: Expanded(
                      child: Image.asset(
                        'images/hitman.png',
                        height: context.getWidth() * 0.90,
                      ),
                    ),
                  ),
                  const RotatedBox(
                      quarterTurns: 3,
                      child: Expanded(
                        child: Text(
                          "HITMAN",
                          style: TextStyle(
                              color: Color(0x11000000),
                              fontSize: 80,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                  const Positioned(
                    bottom: 0,
                    right: 50,
                    child: Text(
                      "Hitman Absolution",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "2022",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: 100,
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          vertical: BorderSide(
                              color: Color(0xff565656),
                              width: 2,
                              style: BorderStyle.solid))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("icons/bi_xbox.png"),
                      Image.asset("icons/bi_playstation.png"),
                      Image.asset("icons/bi_windows.png"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      Image.asset("icons/Star.png"),
                      const Text(
                        " 4.8",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 32, top: 16, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About game",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.",
                    style: TextStyle(
                        fontSize: 16, color: Colors.white.withOpacity(0.7)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.",
                      style: TextStyle(
                          fontSize: 16, color: Colors.white.withOpacity(0.7))),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color(0xffFF1010),
                      borderRadius: BorderRadius.only(
                         topRight: const Radius.circular(20),
                           bottomLeft: Radius.circular(20))),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      "\$ 18.00",
                      style: TextStyle(color: Colors.white , fontSize: 16),
                    ),
                    Text("\$ 13.50" , style: TextStyle(color: Color(0xffDFFF1E) , fontSize: 28),)
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
