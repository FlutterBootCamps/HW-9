import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/constant/spaces.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(left:24.0),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "2022",
            style: GoogleFonts.getFont(
              'Inria Sans',
              textStyle: const TextStyle(
                  fontSize: 18, color: white, fontWeight: FontWeight.bold),
            ),
          ),
          width12,
          Text(
            " | ",
            style: GoogleFonts.getFont(
              'Goldman',
              textStyle: const TextStyle(fontSize: 20, color: grey),
            ),
          ),
          width12,
          Image.asset("asset/bi_xbox.png"),
          width12,
          Image.asset("asset/bi_playstation.png"),
          width12,
          Image.asset("asset/ant-design_windows-filled.png"),
          width12,
          Text(
            " | ",
            style: GoogleFonts.getFont(
              'Goldman',
              textStyle: const TextStyle(fontSize: 20, color: grey),
            ),
          ),
          width24,
          const Icon(
            Icons.star,
            color: yellowStar,
          ),
          Text(
            " 4.8 ",
            style: GoogleFonts.getFont(
              'Inria Sans',
              textStyle: const TextStyle(fontSize: 16, color: white),
            ),
          ),
        ],
      ),
    );
  }
}
