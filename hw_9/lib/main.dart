import 'package:flutter/material.dart';
import 'package:hw_9/pages/games.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GamesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
