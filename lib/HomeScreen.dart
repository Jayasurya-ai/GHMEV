import 'package:ev/MFEmodelL.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'AccessoriesScreen.dart';
import 'package:ev/ThrottleScreen.dart';


final _scaffoldKey = GlobalKey<ScaffoldState>();
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff363636),
            Color(0xff323232),

          ],

        )
      ),
      child: Scaffold(
        key: _scaffoldKey,
        drawer:Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xff2B2D2C),  // set the Color of the drawer transparent; we'll paint above it with the shape
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/2,
            child: Drawer(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  RawMaterialButton(onPressed: (){
                    Navigator.pop(context);

                  },
                    fillColor: Color(0xff2F3634),
                    shape: CircleBorder(),
                  child: Icon(
                    Icons.chevron_left,
                    color: Color(0xff43D8AD),
                    size: 35,

                  ),),
                  Divider(
                    thickness: 1,
                    color: Color(0xff575757),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                            Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Story",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 18,
                            color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Products",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Team",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Blog",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "GreeCoins",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          color: Color(0xff43D8AD),
                          size: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Accessroies",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Color(0xff43D8AD)
                          ),
                        )
                      ],
                    ),
                  )




                ],
              ),
              ),
          ),

        ) ,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if(_scaffoldKey.currentState.isDrawerOpen){
                              _scaffoldKey.currentState.openEndDrawer();
                            }else{
                              _scaffoldKey.currentState.openDrawer();
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff2F3634),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white24.withOpacity(.1),
                                    blurRadius: 5, // soften the shadow
                                    spreadRadius: 0.2, //extend the shadow
                                    offset: Offset(
                                      -5.0, // Move to right 10  horizontally
                                      -5.0, // Move to bottom 10 Vertically
                                    ),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.menu,
                                color: Color(0xff43D8AD),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("images/logo1.png",
                                width: 26, height: 30),
                            Image.asset(
                              "images/logo2.png",
                              width: 66,
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff2F3634),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff8E8E8E).withOpacity(.4),
                            blurRadius: 10, // soften the shadow
                            spreadRadius: 0.5, //extend the shadow
                            offset: Offset(
                              -5.0, // Move to right 10  horizontally
                              -5.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "E-Cycles",
                        style: TextStyle(
                            color: Color(0xff43D8AD),
                            fontSize: 15,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff2F3634),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff8E8E8E).withOpacity(.4),
                            blurRadius: 10, // soften the shadow
                            spreadRadius: 0.5, //extend the shadow
                            offset: Offset(
                              -5.0, // Move to right 10  horizontally
                              -5.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "SE2 Kits",
                        style: TextStyle(
                            color: Color(0xff43D8AD),
                            fontSize: 15,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.75,
                    height: 380.0),
                items: [1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return i == 1
                          ? GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MfeModell()));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.white, Color(0xffF3BABA)],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  borderRadius: BorderRadius.circular(30),
                                  // boxShadow: [BoxShadow(
                                  //   color:Colors.grey,
                                  //   spreadRadius: 3,
                                  //   blurRadius: 2
                                  //
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Stack(
                                        children: [
                                          Image.asset("images/modell.png"),
                                          Image.asset("images/modellcycle.png"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          )
                          : Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white, Color(0xffF3BABA)],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(30),
                                // boxShadow: [BoxShadow(
                                //      color: Colors.white54,
                                //   spreadRadius: 3,
                                //   blurRadius: 2
                                //
                                //      )
                                //   ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Stack(
                                      children: [
                                        Image.asset("images/modell.png"),
                                        Image.asset("images/modellcycle.png"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff2F3634),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white24.withOpacity(.1),
                          blurRadius: 8, // soften the shadow
                          spreadRadius: 0.2, //extend the shadow
                          offset: Offset(
                            -5.0, // Move to right 10  horizontally
                            -5.0, // Move to bottom 10 Vertically
                          ),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Accessories",
                      style: TextStyle(
                          color: Color(0xffD0D0D0),
                          fontSize: 15,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ThrottleScreen()));
                            },
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xffA1FFBB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "3 Speed",
                                      style: TextStyle(
                                          color: Color(0xff2F3634),
                                          fontSize: 15,
                                          fontFamily: "Montserrat"),
                                    ),
                                    Image.asset("images/throttle.png")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Throttle",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white54,
                                  fontFamily: "Montserrat"),
                            ),
                          )
                        ],
                      ),
                      AccessoriesScreen(
                        accessoriesImage: "images/throttle.png",
                        containerColor: Color(0xfff9dfdc),
                        accessoriName: "Head Light",
                      ),
                      AccessoriesScreen(
                        accessoriesImage: "images/throttle.png",
                        containerColor: Color(0xfff9dfdc),
                        accessoriName: "Beam Light",
                      ),
                      AccessoriesScreen(
                        accessoriesImage: "images/throttle.png",
                        containerColor: Color(0xfff9dfdc),
                        accessoriName: "Flash Light",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
