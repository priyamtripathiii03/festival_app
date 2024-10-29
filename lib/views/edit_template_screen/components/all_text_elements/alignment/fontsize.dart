import 'package:flutter/material.dart';

Container fontsizereduce() {
  return Container(
    width: 40,
    height: 30,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 1,
          spreadRadius: 0.5,
        )
      ],
      borderRadius:
      BorderRadius.all(Radius.circular(5)),
      color: Color(0xff1c2438),
    ),
    child: const Text(
      'A-',
      style: TextStyle(color: Colors.white),
    ),
  );
}
Container fontsizeincrease() {
  return Container(
    width: 40,
    height: 30,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 1,
          spreadRadius: 0.5,
        )
      ],
      borderRadius:
      BorderRadius.all(Radius.circular(5)),
      color: Color(0xff1c2438),
    ),
    child: const Text(
      'A+',
      style: TextStyle(color: Colors.white),
    ),
  );
}
Padding fontsizetext() {
  return const Padding(
    padding: EdgeInsets.only(right: 38.0),
    child: Text(
      'Font size',
      style: TextStyle(color: Colors.white),
    ),
  );
}