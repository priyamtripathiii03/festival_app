import 'package:festival_app/modelclass.dart';
import 'package:festival_app/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfestivak = festivalList.map((e) => Festival.fromMap(e)).toList();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Festiv Maker',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.circle_notifications,
              color: Colors.yellow,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_sharp,
              color: Colors.yellow,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                cursorColor: button,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search everything here...',
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: w / 15),
                  ),
                  Text(
                    'SeeAll',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: w / 30),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      myfestivak.length,
                          (index) => Padding(
                        padding: const EdgeInsets.only(right: 5, left: 5),
                          child: Container(
                            height: 200,
                            width: 300,
                                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(10.20)) ,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('${myfestivak[0].img[4]}'))),
                          ),
                        ),
                      ),
                ],
                ),
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Festival',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    'SeeAll',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: w / 30),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      myfestivak.length,
                          (index) => Stack(
                        children: [
                          Container(
                            height: h * 0.250,
                            width: 190,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                    AssetImage('${myfestivak[0].img[1]}'),
                                    fit: BoxFit.cover)),
                            alignment: Alignment.topRight,
                            child: IconButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black38)),onPressed: () {

                            }, icon: Icon(Icons.favorite,color: Colors.white,)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Large Festival',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    'SeeAll',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: w / 30),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.020,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      myfestivak.length,
                          (index) => Stack(
                        children: [
                          Container(
                            height: h * 0.250,
                            width: 190,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                    AssetImage('${myfestivak[0].img[6]}'),
                                    fit: BoxFit.cover)),
                            alignment: Alignment.topRight,
                            child: IconButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black38)),onPressed: () {

                            }, icon: Icon(Icons.favorite,color: Colors.white,)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}