import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  shapesColumns(
      sizedBoxHeight, assetName, assetHeight, assetWidth, assetOpacity) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: sizedBoxHeight,
        ),
        Flexible(
          child: Opacity(
            opacity: assetOpacity,
            child: Image.asset(
              assetName,
              height: assetHeight,
              width: assetHeight,
            ),
          ),
        ),
      ],
    );
  }

  positionedShapes(top, left, bottom, right, assetName, height, width) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: Image.asset(
          "$assetName.png",
          height: height,
          width: width,
        ));
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
              flex: 4,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      shapesColumns(100.0, "circle.png", 30, 30, 0.5),
                      shapesColumns(40.0, "cross.png", 50, 50, 0.8),
                      shapesColumns(0.0, "item_rectangle_one.png", 50, 50, 0.7),
                      shapesColumns(50.0, "circle.png", 50, 50, 0.8),
                      shapesColumns(
                          70.0, "item_rectangle_one.png", 40, 40, 0.4),
                      shapesColumns(20.0, "cross.png", 20, 20, 1.0),
                    ],
                  ),
                  positionedShapes(100, 20, 0, 0, "cross", 60, 60),
                ],
              ),
            )
          ],
        ));
  }
}

//I need to define every position manually. <3
