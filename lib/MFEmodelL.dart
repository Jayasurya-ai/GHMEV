import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

int value1 = 1;
int colorcount = -1;

class MfeModell extends StatefulWidget {
  const MfeModell({Key key}) : super(key: key);

  @override
  _MfeModellState createState() => _MfeModellState();
}

class _MfeModellState extends State<MfeModell> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color(0xff363636)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Column(children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 320.0,
                  autoPlay: true,
                  viewportFraction: 1,
                ),
                items: [1, 2].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return i == 1
                          ? Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/modellred2.png"),
                                      fit: BoxFit.cover)),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/modellred3.png"),
                                      fit: BoxFit.cover)),
                            );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff2F3634),
                            borderRadius: BorderRadius.circular(20),
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
                          padding: const EdgeInsets.only(
                              left: 60, right: 45, top: 5, bottom: 5),
                          child: Text(
                            "Paint",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Color(0xffD0D0D0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Color(0xff545454),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                            icon: value1 == 1
                                ? Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.fiber_manual_record,
                                    color: Color(0xffC4C4C4),
                                  ),
                            onPressed: () {
                              setState(() {
                                value1 = 1;
                              });
                            }),
                        Text(
                          "Red",
                          style: TextStyle(
                            color: Color(0xffC4C4C4),
                            fontFamily: "Montserrat",
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: value1 == 2
                                ? Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.blue,
                                  )
                                : Icon(Icons.fiber_manual_record,
                                    color: Color(0xffC4C4C4)),
                            onPressed: () {
                              setState(() {
                                value1 = 2;
                                // value1=colorcount;
                              });
                            }),
                        Text(
                          "Blue",
                          style: TextStyle(
                            color: Color(0xffC4C4C4),
                            fontFamily: "Montserrat",
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff2F3634),
                            borderRadius: BorderRadius.circular(20),
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
                          padding: const EdgeInsets.only(
                              left: 40, top: 5, bottom: 5),
                          child: Text(
                            "Accessories",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Color(0xffD0D0D0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Color(0xff545454),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child:
                                    Image.asset("images/speedmodell.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                "Top speed : 25KMPH",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Color(0xffE5E5E5)),
                              ),
                            )
                          ],
                        ),
                      ),
                    
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child:
                                    Image.asset("images/rangemodell.png")),
                            Expanded(
                              child: Text(
                                "Range: 35KMPH",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Color(0xffE5E5E5)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                                    "images/secondsmodell.png")),
                            Expanded(
                              child: Text(
                                "0.25 in 2.85 sec",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Color(0xffE5E5E5)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset("images/charger.png")),
                            Expanded(
                              child: Text(
                                "Charge time: 90 min",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Color(0xffE5E5E5)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff2F3634),
                                borderRadius: BorderRadius.circular(20),
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
                              padding: const EdgeInsets.only(
                                  left: 40, top: 5, bottom: 5),
                              child: Text(
                                "Design",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffD0D0D0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Color(0xff545454),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset("images/powerbrakes.png"),
                                Text("Power Brakes",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Color(0xffE5E5E5)),)
                              ],
                            ),
                          ),
                           Expanded(
                             child: Column(
                              children: [
                                Image.asset("images/minimilisticdesign.png"),
                                Text("Power Brakes",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Color(0xffE5E5E5)),)
                              ],
                          ),
                           ),
                           Expanded(
                             child: Column(
                              children: [],
                          ),
                           )

                        ],
                      )
                    ],
                  )
                  
                ],
              ),
            ]))));
  }
}
