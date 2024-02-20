
import 'package:flutter/material.dart';

class GameFilterTabBar extends StatelessWidget {
  const GameFilterTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: TabBar(
          indicatorColor: Color.fromRGBO(223, 255, 30, 1),
          dividerColor: Colors.transparent,
          labelColor: Color.fromRGBO(223, 255, 30, 1),
          tabs: [
            Tab(text: "popular"),
            Tab(text: "new launch"),
            Tab(text: "trending"),
            Tab(text: "free game"),
          ],
        ));
  }
}
