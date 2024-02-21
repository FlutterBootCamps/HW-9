import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_9_maram/pages/hitman_page.dart';
import 'package:hw_9_maram/widgets/game_card.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: const Color(0xFF242522),
                              filled: true,
                              enabledBorder: InputBorder.none,
                              label: Text("Search ",
                                  style: GoogleFonts.inriaSans(
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(10),
                                child: const Iconify(
                                  Bi.search,
                                  color: Colors.white,
                                ),
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(maxWidth: 50)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(18),
                        color: const Color(0xFF242522),
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          child: Text(
                            "Popular",
                            style: GoogleFonts.inriaSans(
                                textStyle: TextStyle(
                                    decoration: index == 0
                                        ? TextDecoration.underline
                                        : null,
                                    decorationColor: Colors.yellow,
                                    color: index == 0
                                        ? Color(0xffDFFF1F)
                                        : Colors.white,
                                    fontSize: 19)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Text(
                            "Trending",
                            style: GoogleFonts.inriaSans(
                                textStyle: TextStyle(
                                    decoration: index == 1
                                        ? TextDecoration.underline
                                        : null,
                                    decorationColor: Colors.yellow,
                                    color: index == 1
                                        ? Color(0xffDFFF1F)
                                        : Colors.white,
                                    fontSize: 19)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          child: Text(
                            "New Launch",
                            style: GoogleFonts.inriaSans(
                                textStyle: TextStyle(
                                    decorationColor: Colors.yellow,
                                    decoration: index == 2
                                        ? TextDecoration.underline
                                        : null,
                                    color: index == 2
                                        ? Color(0xffDFFF1F)
                                        : Colors.white,
                                    fontSize: 19)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          child: Text(
                            "Free Games",
                            style: GoogleFonts.inriaSans(
                                textStyle: TextStyle(
                                    decorationColor: Colors.yellow,
                                    decoration: index == 3
                                        ? TextDecoration.underline
                                        : null,
                                    color: index == 3
                                        ? Color(0xffDFFF1F)
                                        : Colors.white,
                                    fontSize: 19)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HitmanPage();
                          }));
                        },
                        child: GameCard(
                          name: "Cluth World ",
                          path: 'assets/images/Cluth1.png',
                          price: "16.50",
                          color: Color(0xffBB037D),
                        ),
                      ),
                      GameCard(
                        name: "Cyber Punk",
                        path: 'assets/images/Cyber.png',
                        price: " 21.10",
                        color: Color(0xffC0D731),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GameCard(
                        name: "Just Cause 6 ",
                        path: 'assets/images/Just.png',
                        price: " 18.10",
                        color: Color(0xff4EF2AE),
                      ),
                      GameCard(
                        name: "Price Combat ",
                        path: 'assets/images/Price.png',
                        price: "11.100",
                        color: Color(0xffD01207),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GameCard(
                        name: "Just Cause 6 ",
                        path: 'assets/images/Ninja.png',
                        price: " 18.10",
                        color: Color(0xffEAA804),
                      ),
                      GameCard(
                        name: "Price Combat ",
                        path: 'assets/images/Soldier.png',
                        price: "11.100",
                        color: Color(0xff00BFFB),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
