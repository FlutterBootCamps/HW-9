
import 'package:flutter/material.dart';
import 'package:hw_9/pages/helper/extintion.dart';
import 'package:hw_9/pages/hitman_absolution.dart';
import 'package:hw_9/widgets/gime_card_display.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/back.png"),
          Container(
            height: context.getHeight(),
            width: context.getWidth(),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 21, 21, 21),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(26, 255, 255, 255)),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(26, 255, 255, 255)),
                        child: Image.asset("assets/Notification.png"))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    SizedBox(
                      width: 33,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 50,
                          child: Text(
                            "Popular",
                            style: TextStyle(
                                color: Color.fromARGB(255, 221, 255, 30),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 26,
                          left: 1,
                          height: 3,
                          width: 80,
                          child:
                              Divider(color: Color.fromARGB(255, 221, 255, 30)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        "Trending",
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        "New Launch",
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        "Free Games",
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
                InkWell(
                    onTap: () {
                      context.pushTo(view: HitMan());
                    },
                    child: GamesCards()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
