import 'package:flutter/material.dart';
// This class represents a custom card widget used to display game information.
class CustomCard extends StatelessWidget {
  const CustomCard({
    
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.BiscColor,
    required this.Shadow,
    required this.textTop,
    required this.textLeft,
    required this.textSize,
    required this.bottom,
    required this.left,
  }) : super(key: key);
// Properties of the custom card
  final String image; // Image asset path
  final String title; // Game title
  final String price; // Game price
  final Color BiscColor; // Main color for gradient
  final Color Shadow; // Secondary color for gradient
  final double textTop; // Top position of the title text
  final double textLeft; // Left position of the title text
  final double textSize; // Font size of the title text
  final double bottom; // Bottom position of the card image
  final double left; // Left position of the card image

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight / 3.9,
      width: screenWidth / 2.5,
      child: Stack(
        children: [
          Positioned(
            top: 25,
            child: Container(
              height: screenHeight / 5,
              width: screenWidth / 2.5,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    BiscColor,
                    Shadow,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: bottom,
            left: left,
            child: Image.asset(
              image,
            ),
          ),
          Positioned(
            top: textTop,
            left: textLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: textTop + 30,
            left: textLeft + 10,
            child: Text(
              price,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 252, 255, 73),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
