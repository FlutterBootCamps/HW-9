import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/constant/spaces.dart';

class AboutGameWidget extends StatelessWidget {
  const AboutGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About game",
            style: GoogleFonts.getFont(
              'Inria Sans',
              textStyle:  const TextStyle(fontSize: 20, color: white),
            ),
          ),
          height24,
          Text(
            "The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.",
            style: GoogleFonts.getFont(
              'Inria Sans',
              textStyle: TextStyle(
                  fontSize: 15, color: grey, fontWeight: FontWeight.bold),
            ),
          ),
          height12,
          Text(
            "Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.",
            style: GoogleFonts.getFont(
              'Inria Sans',
              textStyle:  TextStyle(
                  fontSize: 15, color: grey, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
