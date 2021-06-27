import 'package:flutter/material.dart';

class AccessoriesScreen extends StatelessWidget {
  String accessoriesImage;
  Color containerColor;
  String accessoriName;

  AccessoriesScreen({this.accessoriesImage,this.containerColor,this.accessoriName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Container(
              height:120,
              width: 120,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(accessoriesImage),
              ),

            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:10),
          child: Text(
            accessoriName,
            style: TextStyle(
                fontSize: 15,
                color: Colors.white54,
                fontFamily: "Montserrat"
            ),
          ),
        )
      ],
    );
  }
}
