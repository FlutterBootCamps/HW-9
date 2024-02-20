import 'package:flutter/material.dart';

extension Screen on BuildContext {

  getWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  getHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  push(BuildContext context, Widget view){
    Navigator.push(context, MaterialPageRoute(builder: (context) => view,));
  }
}