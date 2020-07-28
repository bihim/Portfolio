import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewMobile extends StatelessWidget {
  backgroundText(text) {
    return Expanded(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 100,
          color: Colors.grey[850].withOpacity(0.6),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  socialButton(assetName) {
    //TODO: 1. add another var to use links reffering to its purposes.
    return ClipOval(
      child: Material(
        //color: Colors.blue, // button color
        child: InkWell(
          //splashColor: Colors.red, // inkwell color
          child: SizedBox(
            width: 30,
            height: 30,
            child: Image.asset(
              "$assetName",
              width: 30,
              height: 30,
            ),
          ),
          onTap: () {
            //js.context.callMethod("open", ["https://www.google.com"]);
          },
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
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
                width: 50,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 110,
                          ),
                          //socialButton("facebook.png"),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _launchInBrowser(
                                  "https://www.facebook.com/bihimstudios");
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //socialButton("github.png"),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _launchInBrowser("https://www.github.com/bihim");
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //socialButton("behance.png"),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.behance,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _launchInBrowser("https://www.behance.com/bihim");
                            },
                          ),
                          /* SizedBox(
                            height: 20,
                          ), */
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /* SizedBox(
                          height: 150,
                        ), */
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Hello",
                                    style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    ".",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 70,
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
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 140,
                          ),
                          Flexible(
                            child: Image.asset(
                              "assets/item_rectangle_one.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/item_rectangle_one.png",
                        width: 30,
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            "Android Developer\nGraphic Designer\nFlutter Developer",
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
                      )
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
