
import 'package:flutter/material.dart';
import 'package:ui_game_shop/helper/extension/screen.dart';

class HitmanPage extends StatelessWidget {
  const HitmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: context.getWidth(),
              height: context.getHeight() * 0.55,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.red, Colors.black],
                      end: Alignment.topRight,
                      begin: Alignment.topLeft)),
            ),
            Positioned(
                top: -70,
                right: -40,
                child: Image.asset("image/image_4.png",
                    height: 440, width: 440, alignment: Alignment.topRight)),
            const RotatedBox(
              quarterTurns: 3,
              child: Text(
                "HITMAN",
                style: TextStyle(
                  fontSize: 90,
                  color: Color.fromARGB(68, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
                bottom: -10,
                left: 30,
                child: Text(
                  "Hitman Absolution",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
          ]),
          Container(
              width: context.getWidth(),
              height: context.getHeight() * 0.45,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 55, 54, 54)),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Divider(color: Colors.blue),
                      Image.asset(
                        "image/Frame 481.png",
                        color: Colors.white,
                      ),
                      const Divider(),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, fill: 1),
                          Text(
                            "4.8",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  const Positioned(
                      left: 20,
                      child: Text(
                        "About game",
                        style: TextStyle(color: Colors.white),
                      )),
                  Text(
                      "The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.",
                      style: TextStyle(color: Colors.grey.shade500)),
                  Text(
                      "Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.",
                      style: TextStyle(color: Colors.grey.shade500)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text("Buy Now")),
                      Column(
                        children: [
                          const Text(
                            "\$18.00",
                            style:
                                TextStyle(decoration: TextDecoration.lineThrough,color: Colors.white),
                          ),
                          Text("\$ 13.50",
                              style: TextStyle(
                                color: Colors.yellow.shade500,
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
