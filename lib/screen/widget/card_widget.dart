import 'package:flutter/material.dart';
import 'package:hw9/model/model.dart';
import 'package:hw9/screen/details_screen.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.newGame, required this.color});
  Game newGame;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(game: newGame),
              ));
        },
        child: Container(
          height: 150,
          color: color,
          child: Column(
            children: [
              Image.asset(
                newGame.imagePath,
                height: 100,
                width: 100,
              ),
              Text(newGame.name!),
              Text(newGame.price.toString()),
            ],
          ),
        ),
      ),
    );
  }
}