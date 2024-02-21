import 'package:flutter/material.dart';
import 'package:games_app/widget/lower_widget.dart';
import 'package:games_app/widget/upper_widget.dart';

class AboutGame extends StatelessWidget {
  const AboutGame({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF151515),
      body: SafeArea(
        child: Stack(
          children: [
           //UpperScreen
            UpperWidget(),
             //LowerScreen
            LowerWidget(),
           
          ],
        ),
      ),
    );
  }
}


