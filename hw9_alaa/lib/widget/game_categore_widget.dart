import 'package:flutter/material.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/helper/screen_helper.dart';

class GameCategory extends StatefulWidget {
  const GameCategory({super.key});

  @override
  State<GameCategory> createState() => _GameCategoryState();
}

class _GameCategoryState extends State<GameCategory> {
  List<String> gameCategory = [
    'Popular',
    'Trending',
    'New Launch',
    'Free Game'
  ];
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight() * 0.06,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gameCategory.length,
        itemBuilder: (context, index) => TypeOfGame(index),
      ),
    );
  }


  Widget TypeOfGame(int index) {
    return GestureDetector(
      onTap: () {
        selectedCategory = index;
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              gameCategory[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: selectedCategory == index ? categoryColor : grey),
            ),
            Container(
              height: 2,
              width: 55,
              color: selectedCategory == index
                  ? categoryColor
                  : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
