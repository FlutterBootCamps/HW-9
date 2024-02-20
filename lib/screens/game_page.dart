import 'package:flutter/material.dart';
import 'package:game_store/helpers/extensions/screen_helper.dart';
import 'package:game_store/utils/colors.dart';
import 'package:game_store/widgets/edgt_button.dart';
import 'package:game_store/widgets/game_info_bar.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          SizedBox(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: context.getWidth(context) * .6,
                  height: 457.62,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [redColor, endRedColor],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                const Positioned(
                  right: 105,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "HITMAN",
                        style: TextStyle(
                          color: gameLabelColor,
                          fontFamily: "Poppins",
                          fontSize: 101.82,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                Positioned(
                    left: 45,
                    bottom: 18,
                    child: Image.asset("assets/images/agent_47.png")),
                Positioned(
                  top: 410,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.825),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hitman Absolution",
                          style: TextStyle(
                            color: whiteColor,
                            fontFamily: "Goldman",
                            fontSize: 34.18,
                          ),
                        ),
                        const SizedBox(
                          height: 20.83,
                        ),
                        GameInfoBar(
                          yearOfRelease: "2022",
                          rating: 4.8,
                          supportedPlatforms: [
                            Image.asset("assets/icons/xbox.png"),
                            Image.asset("assets/icons/playstation.png"),
                            Image.asset("assets/icons/windows.png"),
                          ],
                        ),
                        const SizedBox(height: 38.2,),
                        const SizedBox(
                          width: 347.95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("About game", style: TextStyle(color: whiteColor, fontFamily: "InriaSans", fontSize: 18.51, fontWeight: FontWeight.bold),),
                              Text("The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.", style: TextStyle(color: descColor, fontFamily: "InriaSans", fontSize: 13.2, fontWeight: FontWeight.w300,),),
                              Text("Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.", style: TextStyle(color: descColor, fontFamily: "InriaSans", fontSize: 13.2, fontWeight: FontWeight.w300,),)

                            ],
                          ),
                        ),
                        const SizedBox(height: 23.64,),
                        SizedBox(
                          width: context.getWidth(context) *.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 6,
                                child: EdgyButton(text: "Buy Now", onTap: (){},)),
                                const SizedBox(width: 37.3),
                              const Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Text("\$18.00", style: TextStyle(color: whiteColor, fontFamily: "InriaSans", fontSize: 16.2, decoration: TextDecoration.lineThrough, decorationColor: whiteColor,),),
                                    Text("\$13.50", style: TextStyle(color: limegreenColor, fontFamily: "InriaSans", fontSize: 27.77, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

