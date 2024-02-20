import 'package:flutter/material.dart';
import 'package:game_store/utils/colors.dart';

class GSTabBar extends StatelessWidget {
  const GSTabBar({
    super.key,
    required this.tabs, required this.length,
  });
  final List<Tab> tabs;
  final int length;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          dividerColor: noColor,
          indicatorColor: yellowColor,
          indicatorWeight: 2.31,
          labelStyle: const TextStyle(
              color: yellowColor,
              fontFamily: "InriaSans",
              fontSize: 18.51,
              fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(
              color: lightGreyColor,
              fontFamily: "InriaSans",
              fontSize: 18.51,
              fontWeight: FontWeight.normal),
          tabs: tabs),
    );
  }
}
