import 'package:flutter/material.dart';
import 'package:hw9/screen/home_screen.dart';

void main(List<String> args) {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}