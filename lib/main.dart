import 'package:flutter/material.dart';

import 'package:games_app/Screens/game_store_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:GameStorePage(),
    );
  }
}


