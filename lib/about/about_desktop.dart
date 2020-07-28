import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  positionedShapes(x, y, assetName, height, width) {
    return Positioned(
      top: y,
      left: x,
      child: Image.asset(
        "$assetName.png",
        height: height,
        width: width,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "About",
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  positionedShapes(87, 322, "circle", 52, 52),
                  positionedShapes(177, 590, "item_rectangle_two", 38, 38),
                  positionedShapes(161, 96, "cross", 38, 38),
                  positionedShapes(423, 294, "item_rectangle_two", 28, 28),
                  positionedShapes(758, 49, "item_rectangle_one", 24, 24),
                  Center(
                    child: Container(
                      color: Colors.grey[850],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        child: Text(
                          "I love app development. I am working with android studio since 2nd year of my university life. I ported some rom and customised while I was in class 11. Plus I am a graphic designer." +
                              " I have worked with some local clients and an international client. This website is fully done in flutter. You can find source code of this website on my github as well as my projects.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              height: 1.5,
                              letterSpacing: 0.4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  positionedShapes(307, 588, "cross", 21, 21),
                  positionedShapes(620, 140, "item_rectangle_two", 35, 35),
                  positionedShapes(821, 567, "circle", 42, 42),
                  positionedShapes(1247, 133, "item_rectangle_two", 65, 65),
                  positionedShapes(1233, 367, "item_rectangle_one", 26, 26),
                ],
              ),
            )
          ],
        ));
  }
}

//I need to define every position manually. <3
