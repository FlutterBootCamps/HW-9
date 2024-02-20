import 'package:flutter/material.dart';
import 'package:game_store/helpers/extensions/screen_helper.dart';
import 'package:game_store/screens/game_page.dart';
import 'package:game_store/utils/colors.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key, required this.startColor, required this.endColor, required this.image, required this.name, required this.price, this.top, this.bottom, this.left, this.right,
  });
  final Color startColor;
  final Color endColor;
  final String image;
  final String name;
  final double price;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(context, const GamePage());
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        clipBehavior: Clip.none, children: [
        Container(
          width: 167.77,
          height: 190.92,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [startColor, endColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        Positioned(
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            child: Image.asset(
              image,
            )),
        Positioned(
          left: 23.54,
          bottom: 18.54,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(color: whiteColor, fontFamily: "Goldman", fontSize: 18.51),),
              Text("\$${price.toString()}", style: const TextStyle(color: goldColor, fontFamily: "Goldman", fontSize: 13.88),),
            ],
          ),
        )
      ]),
    );
  }
}
