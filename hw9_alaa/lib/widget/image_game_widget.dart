import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/helper/screen_helper.dart';

class ImageGame extends StatelessWidget {
  const ImageGame({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight() * 0.50,
      child: Stack(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: context.getHeight() * 0.45,
                    width: context.getWidth(),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromARGB(190, 52, 40, 40),
                            red,
                          ]),
                    ),
                  ),
                ],
              ),
              //     ),
            ],
          ),
          Positioned(
            top: 0,
            right: 1,
            child: Container(
              height: context.getHeight() * 0.2,
              width: context.getWidth() * 0.4,
              decoration: const BoxDecoration(
                color: black,
              ),
            ),
          ),
          const Positioned(
            right: 260,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                "HITMAN",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(
                    29,
                    0,
                    0,
                    0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 100,
            bottom: 40,
            child: Image.asset(
              "asset/Hitman Absolution.png",
              width: context.getWidth() * 0.89,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 24,
            child: Text(
              "Himan Absolution",
              style: GoogleFonts.getFont(
                'Goldman',
                textStyle: const TextStyle(
                  fontSize: 36,
                  color: white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
