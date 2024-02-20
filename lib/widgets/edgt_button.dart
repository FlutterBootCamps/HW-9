import 'package:flutter/material.dart';
import 'package:game_store/utils/colors.dart';

class EdgyButton extends StatelessWidget {
  const EdgyButton({
    super.key, required this.text, this.onTap,
  });
  final String text;
  final Function()? onTap; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 247.61,
        height: 51.77,
        alignment: Alignment.center,
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [buyButtonColor, endBuyButtonColor], begin: Alignment.topRight, end: Alignment.bottomLeft), borderRadius: BorderRadius.only(topRight: Radius.circular(13.88), bottomLeft: Radius.circular(13.88))),
        child: Text(text, style: const TextStyle(color: whiteColor, fontFamily: "Goldman", fontSize: 20,),),
      ),
    );
  }
}
