import 'package:flutter/material.dart';
import 'package:hw_9_maram/pages/hitman_page.dart';
import 'package:hw_9_maram/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
