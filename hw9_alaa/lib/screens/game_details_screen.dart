import 'package:flutter/material.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/widget/about_game_widget.dart';
import 'package:hw9_alaa/widget/bottom_buy_widget.dart';
import 'package:hw9_alaa/widget/game_info_widget.dart';
import 'package:hw9_alaa/widget/image_game_widget.dart';

class GameDetails extends StatelessWidget {
  const GameDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: ListView(
        children:const [
          Column(
            children: [
              ImageGame(),
              GameInfo(),
              AboutGameWidget(),
            ],
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBuy(),
    );
  }
}
