import 'package:flutter/material.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {"/": (context) => HomeView(), "/about": (context) => About()},
    );
  }
}
