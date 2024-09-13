import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const FestivalApp());
}

class FestivalApp extends StatelessWidget {
  const FestivalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}


