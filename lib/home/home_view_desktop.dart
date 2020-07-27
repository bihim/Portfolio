import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewDesktop extends StatelessWidget {
  backgroundText(text) {
    return Expanded(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 180,
            color: Colors.grey[850].withOpacity(0.6),
            fontWeight: FontWeight.bold,
            letterSpacing: 50.0),
      ),
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  socialButton(assetName, url) {
    return ClipOval(
      child: Material(
        //color: Colors.blue, // button color
        child: InkWell(
          //splashColor: Colors.red, // inkwell color
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              "$assetName",
              width: 50,
              height: 50,
            ),
          ),
          onTap: () {
            _launchURL(url);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 130,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    backgroundText("ANDROID"),
                    backgroundText("FLUTTER"),
                    backgroundText("LARAVEL"),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      "bihim.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    socialButton("facebook.png",
                        "https://www.facebook.com/bihimstudios"),
                    SizedBox(
                      height: 20,
                    ),
                    socialButton("github.png", "https://www.github.com/bihim"),
                    SizedBox(
                      height: 20,
                    ),
                    socialButton(
                        "behance.png", "https://www.behance.com/bihim"),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: new Text(
                        "Android Developer\nGraphic Designer\nFlutter Developer",
                        style: GoogleFonts.robotoMono(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            wordSpacing: 2,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "item_rectangle_one.png",
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    Image.asset(
                      "item_rectangle_one.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  width: 350,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/about");
                        },
                        child: Text(
                          "ABOUT MYSELF",
                          style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              wordSpacing: 2,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  "Hello",
                                  style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                      fontSize: 150,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                ".",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontSize: 150,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "I am\nBihim",
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontSize: 150,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
