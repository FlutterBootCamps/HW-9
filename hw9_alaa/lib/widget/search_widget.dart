import 'package:flutter/material.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/constant/spaces.dart';
import 'package:hw9_alaa/helper/screen_helper.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.getWidth() * 0.7,
            height: context.getHeight() * 0.06,
            decoration: const BoxDecoration(
              color: darkGrey,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Icon(Icons.search, size: 30, color: white),
                  width12,
                  Text(
                    "Search",
                    style: TextStyle(color: white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          width12,
          Container(
            width: context.getWidth() * 0.13,
            height: context.getHeight() * 0.06,
            decoration: const BoxDecoration(
              color: darkGrey,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Stack(
              children: [
                Center(child: Image.asset("asset/notification_icon.png", width: context.getWidth()* 0.06,)),
                Positioned(
                  top: 12,
                  right: 15,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      border: Border.all(color: black, width: 1) ,
                      shape: BoxShape.circle,
                      color: red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
