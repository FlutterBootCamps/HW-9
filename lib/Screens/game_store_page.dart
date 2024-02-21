import 'package:flutter/material.dart';
import 'package:games_app/Screens/about_game.dart';
import 'package:games_app/widget/games_custom.dart';
import 'package:games_app/widget/search_widget.dart';

class GameStorePage extends StatefulWidget {
  const GameStorePage({Key? key}) : super(key: key);

  @override
  _GameStorePageState createState() => _GameStorePageState();
}

class _GameStorePageState extends State<GameStorePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      body: Column(
        children: [
          // Search bar widget
          const SearchWidget(),
          const SizedBox(
            height: 10,
          ),
          // Horizontal scrollable row for different categories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      decoration: index == 0 ? TextDecoration.underline : null,
                      decorationColor: Colors.yellow,
                      color: index == 0 ? Color(0xffDFFF1F) : Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Text(
                    "Trending",
                    style: TextStyle(
                      decoration: index == 1 ? TextDecoration.underline : null,
                      decorationColor: Colors.yellow,
                      color: index == 1 ? Color(0xffDFFF1F) : Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Text(
                    "New Launch",
                    style: TextStyle(
                      decoration: index == 2 ? TextDecoration.underline : null,
                      decorationColor: Colors.yellow,
                      color: index == 2 ? Color(0xffDFFF1F) : Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Text(
                    "Free Games",
                    style: TextStyle(
                      decoration: index == 3 ? TextDecoration.underline : null,
                      decorationColor: Colors.yellow,
                      color: index == 3 ? Color(0xffDFFF1F) : Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Some spacing
          SizedBox(height: 50),
          // Widget to navigate to the About Game screen when tapped
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutGame()),
                );
              },
              child: GamesCustom()),
        ],
      ),
    );
  }
}
