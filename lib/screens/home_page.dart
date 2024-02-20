
import 'package:flutter/material.dart';
import 'package:game_store/helpers/extensions/screen_helper.dart';
import 'package:game_store/utils/colors.dart';
import 'package:game_store/widgets/g_s_tab_bar.dart';
import 'package:game_store/widgets/game_card.dart';
import 'package:game_store/widgets/search_field.dart';
import 'package:game_store/widgets/square_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 5,
                  child: SearchField(
                    label: "Search",
                    hint: "Search for a game",
                  ),
                ),
                const SizedBox(
                  width: 18.51,
                ),
                Expanded(
                  flex: 1,
                  child: SquareButton(
                    icon: "assets/icons/bell.png",
                    onTap: () {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 35),
            const GSTabBar(
              length: 4,
              tabs: [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "Trending",
                ),
                Tab(
                  text: "New Launch",
                ),
                Tab(
                  text: "Free Games",
                ),
              ],
            ),
            const SizedBox(height: 35),
            SizedBox(
              height: context.getHeight(context) * .734,
              child: GridView.count(crossAxisCount: 2,
              padding: const EdgeInsets.only(top: 10),
              childAspectRatio: .8,
              mainAxisSpacing: 33.14,
              crossAxisSpacing: 38.18,
              children: const [
                GameCard(startColor: pinkColor, endColor: pinkEndColor, image: "assets/images/offbrand_joel.png", name: "Cluth World", price: 16.50, top: -17,),
                GameCard(startColor: lemonColor, endColor: endLemonColor, image: "assets/images/payday.png", name: "Cyber Punk", price: 16.50, bottom: 2,),
                GameCard(startColor: cyanColor, endColor: endCyanColor, image: "assets/images/just_cause.png", name: "Just Cause 6", price: 16.50, left: 5,),
                GameCard(startColor: furyColor, endColor: endFuryColor, image: "assets/images/two_blade.png", name: "Price Combat", price: 16.50, right: -60,),
                GameCard(startColor: legendColor, endColor: endLegendColor, image: "assets/images/samurai.png", name: "Ninja Samurai", price: 16.50, left: -5,),
                GameCard(startColor: skyBlueColor, endColor: endSkyBlueColor, image: "assets/images/soilder.png", name: "Soilder Strip", price: 16.50, left: 10, top: -30,),
              ],),
            )
            
          ],
        ),
      )),
    );
  }
}

