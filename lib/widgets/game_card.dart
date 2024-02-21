import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
    required this.color,
    required this.name,
    required this.path,
    required this.price,
  });

  final String path;
  final String name;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 170,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 0),
              width: 170,
              height: 190,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(1, 1.2),
                    colors: <Color>[color, Colors.transparent],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(10))),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              path,
              height: 210,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.goldman(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Text("\$${price}",
                    style: GoogleFonts.goldman(
                      textStyle: const TextStyle(
                        color: Colors.yellow,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
