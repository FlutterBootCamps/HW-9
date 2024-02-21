import 'package:flutter/material.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/constant/spaces.dart';
import 'package:hw9_alaa/widget/display_all_game_widget.dart';
import 'package:hw9_alaa/widget/game_categore_widget.dart';
import 'package:hw9_alaa/widget/search_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              children: [
                SearchWidget(),
                GameCategory(),
                height8,
                DisplayAllGame(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
