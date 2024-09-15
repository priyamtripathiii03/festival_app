import 'package:flutter/material.dart';
import 'modelclass.dart';
import 'package:google_fonts/google_fonts.dart';

List festivalList=[
  {
'Festival name' : 'Makar Sakranti',
'Text': 'Create your Makar Sakranti Templates',
'Images' : 'assets/images/m1.jpeg',
'Color' :Colors.teal,
'image' : [
'assets/images/makarsankranti/m1.jpeg',
'assets/images/makarsankranti/m2.jpeg',
'assets/images/makarsankranti/m3.jpeg',
'assets/images/makarsankranti/m4.jpeg',
'assets/images/makarsankranti/m5.jpeg',
'assets/images/makarsankranti/m6.jpeg',
'assets/images/makarsankranti/m7.jpeg',
]
},
  {
    'Festival name' : 'Vasant Panchami',
    'Text': 'Create your Vasant Panchami Templates',
    'Images' : 'assets/images/v1.jpeg',
    'Color' :Colors.green,
    'image' : [
      'assets/images/vasant panchami/v1.jpeg',
      'assets/images/vasant panchami/v2.jpeg',
      'assets/images/vasant panchami/v3.jpeg',
      'assets/images/vasant panchami/v4.jpeg',
      'assets/images/vasant panchami/v5.jpeg',
      'assets/images/vasant panchami/v6.jpeg',
      'assets/images/vasant panchami/v7.jpeg',
    ]

  }
];
List <Festival> myfestivak=[];

List Colorlist = [
  Colors.white,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.black,
  Colors.grey,
  Colors.yellowAccent,
  Colors.cyan,
  Colors.orange,
  Colors.deepPurple,
  Colors.pinkAccent
];
int textcolorindex = 0;
List textfamily = [
  GoogleFonts.nunito,
  GoogleFonts.playfairDisplay,
  GoogleFonts.roboto,
  GoogleFonts.lato,
  GoogleFonts.kanit,
  GoogleFonts.montserrat,
  GoogleFonts.oswald,
  GoogleFonts.raleway,
  GoogleFonts.quicksand,
  GoogleFonts.poppins,
  GoogleFonts.workbench,
];
List gradient_List = [
  [Color(0xffB3C8CF), Color(0xffBED7DC), Color(0xffF1EEDC), Color(0xffE5DDC5)],
  [Color(0xff49243E), Color(0xff704264), Color(0xffBB8493), Color(0xffDBAFA0)],
  [Color(0xffD20062), Color(0xffD6589F), Color(0xffD895DA), Color(0xffC4E4FF)],
  [Color(0xffFFAF45), Color(0xffFB6D48), Color(0xffD74B76), Color(0xff673F69)],
  [Color(0xff401F71), Color(0xff824D74), Color(0xffBE7B72), Color(0xffFDAF7B)],

];

Color button=Color(0xff65D3A8);
Color back=Color(0xff303030);
Color search=Color(0xff000000);