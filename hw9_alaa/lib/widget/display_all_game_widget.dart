import 'package:flutter/material.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/datasets/game_dataset.dart';
import 'package:hw9_alaa/model/game_model.dart';
import 'package:hw9_alaa/widget/card_game_widget.dart';

class DisplayAllGame extends StatelessWidget {
  const DisplayAllGame({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> color = [
      pink,
      lime,
      green,
      red,
      orange,
      blue,
      const Color(0xffFBFF49),
    ];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 22,
          crossAxisSpacing: 25,
          shrinkWrap: true,
          children: List.generate(gameData.length, (index) {
            return CardGameWidget(
              allGame: GameModel.fromJson(gameData[index]),
              color: color[index],
            );
          })),
    );
  }
}
