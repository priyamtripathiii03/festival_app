import 'package:flutter/material.dart';

Icon icons() {
  return const Icon(
    Icons.done,
    color: Colors.white,
  );
}
Column dividerandspace() {
  return const Column(
    children: [
       SizedBox(
        height: 5,
      ),
       Divider(
        thickness: 2,
      ),
      SizedBox(
        height: 5,
      ),
    ],
  );
}