import 'package:flutter/material.dart';
import 'package:portfolio/about/about_desktop.dart';
import 'package:portfolio/about/about_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AboutDesktop(),
      mobile: AboutMobile(),
    );
  }
}
