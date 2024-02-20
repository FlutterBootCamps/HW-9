import 'package:flutter/material.dart';
import 'package:ui_game_shop/component/game_filter_tab_bar.dart';
import 'package:ui_game_shop/component/grid_view.dart';
import 'package:ui_game_shop/component/item_card.dart';
import 'package:ui_game_shop/helper/extension/screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<bool> list2 = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "image/image_8.jpeg",
            fit: BoxFit.fill,
          )),
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          color: const Color.fromRGBO(21, 21, 21, 0.711),
          child: Center(
              child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: context.getWidth() * 0.7,
                    child: const Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Color.fromARGB(121, 82, 74,
                              74), // Change the button color as needed

                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                            fill: 1,
                          )),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color.fromARGB(121, 82, 74, 74),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const GameFilterTabBar(),
              const GridViewItem(),
            ],
          )),
        ),
      ),
    ]));
  }
}
