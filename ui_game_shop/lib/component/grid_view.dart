import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_game_shop/component/item_card.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 32),
      children: [
        ItemCard(image: "image/image_3.png",name: "Cluth World",price: "\$16.58",color: Colors.pink.shade600),
        ItemCard(image: "image/image_1.png",name: "Cyber Punk",price: "\$21.10",color: Colors.pink.shade300),
        ItemCard(image: "image/image_2.png",name: "Just Cause 6",price: "\$18.10",color: Color.fromARGB(255, 156, 183, 47)),
        ItemCard(image: "image/image_6.png",name: "Price Combat",price: "\$11.10",color: Colors.red.shade600),
        ItemCard(image: "image/image_5.png",name: "Ninja Samurai",price: "\$13.50",color: Colors.amber.shade600),
        ItemCard(image: "image/image_7.png",name: "Solder Strip",price: "\$19.10",color: Colors.blue.shade300),

      ],
    );
  }
}

