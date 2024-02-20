import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_game_shop/helper/extension/screen.dart';
import 'package:ui_game_shop/page/hitman_page.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.color,
  });
  final String image;
  final String name;
  final String price;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          margin: EdgeInsets.all(8),
          width: context.getWidth() * 0.33,
          height: context.getHeight() * 0.33,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Container(
              width: context.getWidth()* 0.33,
              height: context.getHeight()* 0.26,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(20)),
                      gradient: LinearGradient(
                          colors: <Color>[Colors.black, color],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    )),
              ),
              Positioned(
                  child: Image.asset(
                image,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.fitHeight,
                scale: 10,
              )),
              Positioned(
                  left: 15,
                  bottom: 70,
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  left: 15,
                  bottom: 50,
                  child: Text(
                    price,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 251, 255, 73),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          )),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HitmanPage()),
        );
      },
    );
  }
}
