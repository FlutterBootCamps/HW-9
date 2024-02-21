

import 'package:flutter/material.dart';

class UpperWidget extends StatefulWidget {
  const UpperWidget({super.key});

  @override
  State<UpperWidget> createState() => _UpperWidgetState();
}

class _UpperWidgetState extends State<UpperWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
              top: -60, 
              left: 0.0,
              right: 0.0, 
              height: MediaQuery.of(context).size.height * 0.6, 
              child: Container(
     
                child: Image.asset(
                  'images/hitman.png', 
                ),
              ),
            );
  }
}
