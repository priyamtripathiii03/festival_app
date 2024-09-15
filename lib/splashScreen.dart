import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override

  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2),
          () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
    );
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo/logo.png'),
                  )
              ),
            ),
            Text('Festival App',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
          ],
        ),
      ),
    );
  }
}
