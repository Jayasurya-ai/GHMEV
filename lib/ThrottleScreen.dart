import 'package:flutter/material.dart';

class ThrottleScreen extends StatefulWidget {
  const ThrottleScreen({Key key}) : super(key: key);

  @override
  _ThrottleScreenState createState() => _ThrottleScreenState();
}

class _ThrottleScreenState extends State<ThrottleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "images/ThrottleEnlarged.png",
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Divider(
                      thickness: 5,
                      color: Color(0xff12EBAC),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 30,
                child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.white,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.chevron_left,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: MediaQuery.of(context).size.width / 3,
                child: Image.asset("images/hh.png"),
              ),
              Positioned(
                  top: 135,
                  left: 10,
                  child: Image.asset("images/throttletext.png")),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child: Image.asset("images/handle.png")),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "3 Speed Throttle",
                      style: TextStyle(
                          color: Color(0xff43D8AD),
                          fontSize: 20,
                          fontFamily: "Montserrat"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit \namet, consectetur adipiscing\nelit.Donec ultrices feugiat\ndis nunc..                       \n                           \n                      ",
                      style: TextStyle(
                          color: Color(0xffDBDBDB),
                          fontSize: 10,
                          fontFamily: "Montserrat"),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff40C7A0),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white24.withOpacity(.3),
                      blurRadius: 8, // soften the shadow
                      spreadRadius: 0.2, //extend the shadow
                      offset: Offset(
                        -5.0, // Move to right 10  horizontally
                        -5.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 12, 60, 12),
                child: Text(
                  "Get this",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Color(0xff272A29)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
