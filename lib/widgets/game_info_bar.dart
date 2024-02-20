import 'package:flutter/material.dart';
import 'package:game_store/helpers/extensions/screen_helper.dart';
import 'package:game_store/utils/colors.dart';

class GameInfoBar extends StatelessWidget {
  const GameInfoBar({
    super.key, required this.yearOfRelease, required this.supportedPlatforms, required this.rating,
  });

  final String yearOfRelease;
  final List<Image> supportedPlatforms;
  final double rating;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(context) * .72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(yearOfRelease, style: const TextStyle(color: whiteColor, fontFamily: "InriaSans", fontSize: 18.51, fontWeight: FontWeight.bold),),
          const GSDivider(),
          SizedBox(
            width: 99.51,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: supportedPlatforms,
            ),
          ),
          const GSDivider(),
          SizedBox(
            width: 49.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons/star.png"),
                Text(rating.toString(), style: const TextStyle(color: whiteColor, fontFamily: "InriaSans", fontSize: 18.51, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
      
      
        ],
      ),
    );
  }
}

class GSDivider extends StatelessWidget {
  const GSDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 17.93,
      color: dividerColor,
    );
  }
}
