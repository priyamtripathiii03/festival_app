import 'package:festival_app/utils/festivals.dart';
import 'package:festival_app/views/components/home/components/grid_view_container.dart';
import 'package:flutter/material.dart';


GridView Grid_View() {
  return GridView.builder(
    physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
    itemCount: festivalList.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) => festival1(
        festivalList[index]['Color'],
        festivalList[index]['Festival name'],
        festivalList[index]['Text'],
        festivalList[index]['Images'],index,context),);
}