import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/helper/screen_helper.dart';

class BottomNavBuy extends StatelessWidget {
  const BottomNavBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: "buy button",
          icon: SizedBox(
            width: context.getWidth() * 0.75,
            height: context.getWidth() * 0.13,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff8A0000),
                        Color(0xffFF1010),
                      ]),
                  color: red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.getFont(
                      'Goldman',
                      textStyle: const TextStyle(fontSize: 20, color: white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "price",
          icon: Column(
            children: [
              Text(
                "\$ 18.00",
                style: GoogleFonts.getFont(
                  'Goldman',
                  textStyle: const TextStyle(fontSize: 16, color: white),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: white,
                ),
              ),
              Text(
                "\$ 13.50",
                style: GoogleFonts.getFont(
                  'Goldman',
                  textStyle: const TextStyle(fontSize: 28, color: yellow),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
