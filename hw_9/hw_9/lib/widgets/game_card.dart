import 'package:flutter/material.dart';
import 'package:hw_9/extension/screen_handler.dart';
import 'package:hw_9/screens/game_details.dart';

class GameCard extends StatelessWidget {
  GameCard({super.key, required this.imagepath, required this.name, required this.price, required this.color});
  final String imagepath;
  final String name;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushTo(view: const GameDetailsScreen()),
      child: Container(
        width: 167,
        height: 220,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                  height: 200,
                  width: 167,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                        begin: const Alignment(0, -1),
                        end: const Alignment(0, 1),
                        colors: [color, const Color(0x009eae3e)],
                        stops: [0, 1],
                      ))),
            ),
            Positioned(
              top: 0,
              child: Image.asset(imagepath),
            ),
            Positioned(
              bottom: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "\$ ${price}",
                      style: const TextStyle(color: Color(0xffFBFF49), fontSize: 14),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
