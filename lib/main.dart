import 'package:flutter/material.dart';
import 'package:festival_app/splashScreen.dart';
import 'package:festival_app/home_page.dart';


void main() {
  runApp(const FestivalApp());
}

class FestivalApp extends StatelessWidget {
  const FestivalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Homescreen(),

      },

    );
  }
}




