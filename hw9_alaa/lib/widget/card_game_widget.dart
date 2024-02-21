import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw9_alaa/constant/color.dart';
import 'package:hw9_alaa/helper/screen_helper.dart';
import 'package:hw9_alaa/model/game_model.dart';
import 'package:hw9_alaa/screens/game_details_screen.dart';

class CardGameWidget extends StatelessWidget {
  CardGameWidget({super.key, required this.allGame, required this.color});
 
  final GameModel allGame;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      width: context.getWidth() * 0.55,
      height: context.getWidth() * 0.7,
      child: 
      Center(
        child: Stack(
          alignment: Alignment.center,
            fit: StackFit.expand,
            clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Positioned(
              top: 10,
                child: Container(
                  width: context.getWidth() * 0.40,
                  height: context.getWidth() * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      
                    ),

                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomCenter,
                        colors: 
                        [
                          color,
                          const Color.fromARGB(6, 0, 0, 0),
                         
                        ]),
                  ),
                ),
              ),
            // ),
            Positioned(
                bottom: 1,
                right: 1,
                left:1,
        
                child:
                 Image.asset(
                  allGame.image,
                  width: context.getWidth() * 0.7,
                  height: context.getHeight() * 0.20,
                ),
                ),
            Positioned(
              bottom: 40,
              left: 20,
                child:
                 InkWell(
                  onTap:(){
                      context.pushTo(view: const GameDetails());
                  },
                   child: Text(
                    allGame.name,
                    style: GoogleFonts.getFont(
                      'Goldman',
                      textStyle: const TextStyle(fontSize: 20, color: white),
                    ),
                                   ),
                 ),
              ),
            Positioned(
              bottom: 28,
              left: 20,
              child: Text(
                "\$ ${allGame.currentPrice}",
                style: GoogleFonts.getFont(
                  'Goldman',
                  textStyle: const TextStyle(fontSize: 13, color: yellow),
                ),
              ),
            ),
          ],
        ),
      ),      
    );
  }
}
