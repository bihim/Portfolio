import 'package:flutter/material.dart';
import 'package:portfolio/home/home_view_desktop.dart';
import 'package:portfolio/home/home_view_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewMobile(),
      desktop: HomeViewDesktop(),
      tablet: HomeViewDesktop(),
    );
  }
}
