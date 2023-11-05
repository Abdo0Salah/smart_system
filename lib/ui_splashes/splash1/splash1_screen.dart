import 'package:flutter/material.dart';
import 'package:smart_system/ui_splashes/splash1/Grid.dart';

class splash1 extends StatelessWidget{
  static const String routename = 'splash1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 388,
              height: 70,
            ),
            Grid(image0: "assets/images/splash1/Rectangle 4.png", image1: "assets/images/splash1/download (15) 1.png", text:"Student" ),
            SizedBox(
              width: 40,
              height: 40,
            ),
            Grid(image0: "assets/images/splash1/Rectangle 5.png", image1: "assets/images/splash1/images 55559.png", text: "Doctors/Staff"),
            SizedBox(
              width: 40,
              height: 40,
            ),
            Grid(image0: "assets/images/splash1/Rectangle 6.png", image1: "assets/images/splash1/download (1) 7.png", text: "Parent"),
            SizedBox(
              width: 40,
              height: 40,
            ),
            Grid(image0: "assets/images/splash1/Rectangle 7.png", image1: "assets/images/splash1/download 1.png", text: "Admin"),
          ],
        ),
      ),
    );
  }

}