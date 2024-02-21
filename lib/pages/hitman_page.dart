import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class HitmanPage extends StatelessWidget {
  const HitmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 47),
                  width: MediaQuery.of(context).size.width * 0.52,
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(1, 1.2),
                      colors: <Color>[
                        Color(0xffED0302),
                        Color(0xff8A0B0A),
                        Colors.transparent
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/background.png',
                      height: MediaQuery.of(context).size.height * 0.47,
                      width: MediaQuery.of(context).size.width * 0.75),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Hitman Absolution",
                      style: GoogleFonts.goldman(
                          textStyle:
                              TextStyle(fontSize: 39, color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("2022",
                        style: GoogleFonts.inriaSans(
                          textStyle:
                              TextStyle(fontSize: 19, color: Colors.white),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "|",
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    const Iconify(
                      Bi.xbox,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    const Iconify(
                      Bi.playstation,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    const Iconify(
                      Bi.windows,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "|",
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.star_outlined,
                      color: Color(0xffFFC83A),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.8",
                      style: GoogleFonts.inriaSans(
                          textStyle:
                              TextStyle(fontSize: 22, color: Colors.white)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "About game",
                  style: GoogleFonts.inriaSans(
                      textStyle: TextStyle(
                          fontSize: 18.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The original assassin is back! Betrayed by the\nAgency and hunted by the police, Agent 47 finds\nhimself pursuing redemption in a corrupt and\ntwisted world.",
                  style: GoogleFonts.inriaSans(
                      textStyle:
                          TextStyle(fontSize: 16, color: Color(0xffB9B9B9))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Hitman: Absolution is a 2012 stealth video game\ndeveloped by IO Interactive and published by\nSquare Enix's European subsidiary. It is the fifth\ninstallment in the Hitman series and the sequel to\n2006's Hitman: Blood Money.",
                    style: GoogleFonts.inriaSans(
                        textStyle:
                            TextStyle(fontSize: 16, color: Color(0xffB9B9B9)))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.57,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffE00A0B)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(
                                          10)) // Set the radius here
                                  ),
                            )),
                        onPressed: () {},
                        child: Text(
                          "Buy Now",
                          style: GoogleFonts.goldman(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "\$18.00",
                          style: GoogleFonts.inriaSans(
                            textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.white),
                          ),
                        ),
                        Text("\$13.50",
                            style: GoogleFonts.inriaSans(
                              textStyle: TextStyle(
                                  fontSize: 28, color: Color(0xffDFFF1F)),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
