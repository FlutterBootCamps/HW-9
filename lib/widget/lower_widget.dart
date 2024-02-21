import 'package:flutter/material.dart';

class LowerWidget extends StatefulWidget {
  const LowerWidget({super.key});

  @override
  State<LowerWidget> createState() => _LowerWidgetState();
}

class _LowerWidgetState extends State<LowerWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
              top: 385, 
              left: 0.0, 
              right: 0.0, 
              height: MediaQuery.of(context).size.height * 0.6,
              child: Container(
                
                child: Image.asset(
                  'images/about.png', 
                  fit: BoxFit.none,
                ),
              ),
            );
  }
}