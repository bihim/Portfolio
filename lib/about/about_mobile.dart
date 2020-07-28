import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  positionedShapes(double x, double y, assetName, double height, double width) {
    return Positioned(
      top: y,
      left: x,
      child: Image.asset(
        "assets/$assetName.png",
        height: height,
        width: width,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        title: Text(
          "About",
          style: GoogleFonts.robotoMono(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              wordSpacing: 2,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          positionedShapes(
              20, 42, "circle", 32, 32) /*first dan bam, second upor nich,*/,
          Center(
            child: Container(
              color: Colors.grey[850],
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  "I love app development. I am working with android studio since 2nd year of my university life. I ported some rom and customised while I was in class 11. Plus I am a graphic designer." +
                      " I have worked with some local clients and an international client. This website is fully done in flutter. You can find source code of this website on my github as well as my projects.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      height: 2,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
              ),
            ),
          ),
          positionedShapes(100, 632, "item_rectangle_one", 42, 42),
          positionedShapes(250, 100, "item_rectangle_two", 20, 20),
          positionedShapes(300, 682, "cross", 22, 22),
        ],
      ),
    );
  }
}
