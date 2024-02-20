import 'package:flutter/material.dart';
import 'package:game_store/utils/colors.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key, required this.icon, this.onTap,
  });
  
  final String icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 55.54,
        height: 52.54,
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.63)), color: darkGreyColor,),
        child: Image.asset(icon),
      ),
    );
  }
}
