import 'package:flutter/material.dart';
import 'package:hw9/model/model.dart';
bool isClicked = true;
class DetailsScreen extends StatefulWidget {

   DetailsScreen({super.key, required this.game});
Game game;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(widget.game.imagePath!),
          Text("Name is : ${widget.game.name}"),
          Text("Rating is : ${widget.game.price}"),
          const SizedBox(
            height: 46,
          ),
          MaterialButton(
            color: isClicked ? Colors.green : Colors.red,
            onPressed: () {
              print("button pressed is $isClicked");
              isClicked = !isClicked;
              setState(() {});
            },
            child: Text(isClicked.toString()),
          ),
        ],
      ),
    );
  }
}