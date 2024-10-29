import 'package:festival_app/views/components/home/components/homescreen.dart';
import 'package:festival_app/views/components/home/components/splash_screen.dart';
import 'package:festival_app/views/edit_post/edit_page_screen.dart';
import 'package:festival_app/views/edit_template_screen/components/background/edit_template_screen.dart';
import 'package:festival_app/views/edit_template_screen/components/history/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff1d243b),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        useMaterial3: true,
      ),
      initialRoute: '/',

      routes: {
        '/' : (context) => const Splash_Screen(),
        '/second' : (context) => const Home_Screen(),
        '/third' : (context) => const Edit_POst_Screen(),
        '/four' : (context) => const edit_template_screen(),
        '/five' : (context) => const History_Page(),
      },
    );
  }
}
