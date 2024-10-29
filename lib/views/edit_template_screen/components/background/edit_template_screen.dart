
import 'package:festival_app/utils/Text_Decoration.dart';
import 'package:festival_app/utils/festivals.dart';
import 'package:festival_app/utils/gradient_color_list.dart';
import 'package:festival_app/utils/variables.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/add_the_text.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/alignment/bottom.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/alignment/fontsize.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/alignment/left.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/alignment/right.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/alignment/simple.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/alignment/top.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/button.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/font_color/colors.dart';
import 'package:festival_app/views/edit_template_screen/components/all_text_elements/font_family/font_family.dart';
import 'package:festival_app/views/edit_template_screen/components/background/background_color.dart';
import 'package:festival_app/views/edit_template_screen/components/background/background_image.dart';
import 'package:festival_app/views/edit_template_screen/components/background/bottom_navigation.dart';
import 'package:festival_app/views/edit_template_screen/components/background/simple.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';


class edit_template_screen extends StatefulWidget {
  const edit_template_screen({super.key});

  @override
  State<edit_template_screen> createState() => _edit_template_screenState();
}

class _edit_template_screenState extends State<edit_template_screen> {
  void toggleWidgetState(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff1c2438),
        title: const Text(
          'Edit',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    isImageandColor = true;
                    txtname = TextEditingController(text: '');
                    textcolorindex = 0;
                    textfontfamilyindex = 0;
                    top = 0;
                    bottem = 0;
                    left = 0;
                    right = 0;
                    backgroundcolorindex == 0;
                    backgroungindex = 0;
                  });
                },
                child: const Icon(Icons.replay)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RepaintBoundary(
                      key: imgkey,
                      child: Container(
                        // margin: EdgeInsets.only(top: 20),
                        height: 430,
                        width: 430,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: (isImageandColor)
                                  ? AssetImage(
                                festivalList[postviewIndex]['image']
                                [backgroungindex],
                              )
                                  : const AssetImage(''),
                              fit: BoxFit.fill,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff1c2438),
                                blurRadius: 0.5,
                                spreadRadius: 1,
                              )
                            ],
                            gradient: LinearGradient(
                              colors: gradient_List[backgroundcolorindex],
                            )),
                        child: Stack(
                          children: [
                            // Container(
                            //     width: width,
                            //     height: height,
                            //     // child:
                            //     //      Image.asset(
                            //     //   festivalList[postviewIndex]['image']
                            //     //   [backgroungindex],
                            //     //   fit: BoxFit.cover,
                            //     // )
                            //        ),
                            Positioned(
                                top: top,
                                bottom: bottem,
                                left: left,
                                right: right,
                                child: Container(
                                    height: 300,
                                    width: 300,
                                    child: Text(
                                      txtname.text,
                                      style: textfamily[textfontfamilyindex](
                                          fontSize: fontofsize,
                                          color: Colorlist[textcolorindex]),
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IndexedStack(
            index: posteditindex,
            children: [
              canvas(), // index = 0
              text(), // index = 1
              Container(
                height: 100,
                color: Colors.blue,

              ),
              Container(
                height: 100,
                color: Colors.red,
              ),
              background(), //4
              backgroundcolors(), // 5
              textfield(), // 6 // Alignment container
              Container(
                height: 230,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xff1c2438),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        headofalignments(),
                        InkWell(
                            onTap: () {
                              setState(() {
                                posteditindex = 1;
                              });
                            },
                            child: icons())
                      ],
                    ),
                    dividerandspace(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              headofpostion(),
                              const SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    bottem += 4;
                                    top -= 4;
                                  });
                                },
                                child: alignmenttop(),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        right += 4;
                                        left -= 4;
                                      });
                                    },
                                    child: alignmentleft(),
                                  ),
                                  const SizedBox(
                                    width: 38,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        right -= 4;
                                        left += 4;
                                      });
                                    },
                                    child: alignmentrigth(),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    top += 4;
                                    bottem -= 4;
                                  });
                                },
                                child: alignmentbottom(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              fontsizetext(),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        fontofsize++;
                                      });
                                    },
                                    child: fontsizeincrease(),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        fontofsize--;
                                      });
                                    },
                                    child: fontsizereduce(),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), // 7 for the alignment
              fontfamilys(), // 8
              textcolor(), // 9
            ],
          ),

          // This is a Bottem container
          Container(
            height: 80,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
              color: Color(0xff1c2438),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: canvasedit(),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (kDebugMode) {
                        print('hello');
                      }
                      posteditindex = 1;
                    });
                  },
                  child: textedit(),
                ),

                save(toggleState: toggleWidgetState),
                share(toggleState: toggleWidgetState),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container textfield() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headtext(),
              InkWell(
                  onTap: () {
                    setState(() {
                      TextEditingControllerlist.add(txtname.text);
                      posteditindex = 1;
                    });
                  },
                  child: icons())
            ],
          ),
          dividerandspace(),
          InkWell(
              onTap: () {
                setState(() {
                  posteditindex = 6;
                });
              },
              child: textFields())
        ],
      ),
    );
  }

  Container fontfamilys() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              familyheadtext(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 1;
                    });
                  },
                  child: icons())
            ],
          ),
          dividerandspace(),
          Container(
            height: 145,
            child: Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                  ListWheelScrollView.useDelegate(
                      itemExtent: 55,
                      onSelectedItemChanged: (value) {
                        setState(() {
                          textfontfamilyindex = value;
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: textfamily.length,
                        builder: (context, index) => fontfamilytext(index),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container textcolor() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headfontcolor(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 1;
                    });
                  },
                  child: icons())
            ],
          ),
          dividerandspace(),
          GridView.builder(
            itemCount: Colorlist.length,
            shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  textcolorindex = index;
                  (index == 0)
                      ? showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Pick your color'),
                        content: Container(
                          height: 500,
                          width: 300,
                          child: ColorPicker(
                            color: Colorlist[0],
                            onChanged: (value) {
                              setState(() {
                                Colorlist[0] = value;
                              });
                            },
                            initialPicker: Picker.paletteHue,
                          ),
                        ),
                        actions: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("save"))
                        ],
                      ))
                      : null;
                });
              },
              child: coloricon(index),
            ),
          )
        ],
      ),
    );
  }

  Container backgroundcolors() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headofbgcolor(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: icons())
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                gradient_List.length,
                    (index) => InkWell(
                  onTap: () {
                    setState(() {
                      isImageandColor = false;
                      backgroundcolorindex = index;
                    });
                  },
                  child: backcolors(index),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container background() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headofimage(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: icons())
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                festivalList[postviewIndex]['image'].length,
                    (index) => InkWell(
                  onTap: () {
                    setState(() {
                      isImageandColor = true;
                      backgroungindex = index;
                    });
                  },
                  child: backimage(index),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container text() {
    return Container(
      height: 230,
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          headoftext(),
          const SizedBox(
            height: 20,
          ),

          // Add Text and alingment
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 6;
                    });
                  },
                  child: addtext()),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 7;
                    });
                  },
                  child: alignment()),
            ],
          ),

          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 8;
                    });
                  },
                  child: fontfamily()),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 9;
                    });
                  },
                  child: fontcolor()),
            ],
          ),
        ],
      ),
    );
  }

  Container canvas() {
    return Container(
      height: 230,
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          textname(),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    posteditindex = 4;
                  });
                },
                child: backgroundimg(),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    posteditindex = 5;
                  });
                },
                child: backgroundcol(),
              ),
            ],
          )
        ],
      ),
    );
  }

}
