import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_9/pages/helper/extintion.dart';

class HitMan extends StatelessWidget {
  const HitMan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: context.getHeight(),
      width: context.getWidth(),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 21, 21, 21),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: context.getHeight() / 2,
          width: context.getWidth(),
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                right: 120,
                child: Container(
                  height: context.getHeight() / 2,
                  width: context.getWidth() / 1.4,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 255, 0, 0),
                          Color.fromARGB(0, 255, 0, 0),
                        ],
                      )),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 100,
                  child: Image.asset("assets/image.png")),
              Positioned(
                bottom: -10,
                left: 30,
                child: Text(
                  "Hitman Absolution",
                  style: GoogleFonts.goldman(
                      fontSize: 38,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Positioned(
               top: 20,
               left: 20,
                child: Image.asset("assets/Hitman.png")
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                "2022",
                style: GoogleFonts.inriaSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Color.fromARGB(255, 86, 86, 86)))),
              ),
              const SizedBox(
                width: 25,
              ),
              Image.asset("assets/icons.png"),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Color.fromARGB(255, 86, 86, 86)))),
              ),
              const SizedBox(
                width: 25,
              ),
              Image.asset("assets/raiting.png"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 20),
          child: Text(
            "About game",
            style: GoogleFonts.inriaSans(
                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Text(
            "The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.",
            style: GoogleFonts.inriaSans(
                fontSize: 17, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20, top: 20 , bottom: 20),
          child: Text(
            "Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.",
            style: GoogleFonts.inriaSans(
                fontSize: 17, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 40,
              width: 230,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 255, 16, 16),
                      Color.fromARGB(255, 138, 0, 0),
                    ],
                  )),
              child: Center(
                child: Text(
                  "Buy Now",
                  style: GoogleFonts.goldman(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Text(
                      "\$ 18.00",
                      style: GoogleFonts.inriaSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Positioned(
                      top: 4,
                      child: Container(
                        height: 10,
                        width: 70,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(width: 1, color: Colors.white))),
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$ 13.50",
                  style: GoogleFonts.inriaSans(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 221, 255, 30)),
                ),
              ],
            )
          ],
        )
      ]),
    ));
  }
}
