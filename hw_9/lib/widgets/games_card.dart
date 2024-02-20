import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_9/pages/helper/extintion.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      required this.image,
      required this.title,
      required this.prise,
      required this.color1,
      required this.color2});
  final String image;
  final String title;
  final String prise;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() / 3.9,
      width: context.getWidth() / 2.5,
      child: Stack(
        children: [
          Positioned(
            top: 18,
            child: Container(
              height: context.getHeight() / 5,
              width: context.getWidth() / 2.5,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      color1,
                      color2,
                    ],
                  )),
            ),
          ),
          Positioned(
            child: Image.asset(
              image,
            ),
          ),
          Positioned(
              top: 140,
              left: 30,
              child: Text(
                title,
                style: GoogleFonts.goldman(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
          Positioned(
              top: 170,
              left: 30,
              child: Text(prise,
                  style: GoogleFonts.goldman(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 252, 255, 73),
                  ))),
        ],
      ),
    );
  }
}
