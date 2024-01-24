import 'package:flutter/material.dart';

class Grid extends StatelessWidget{
   String image0;
   String image1;
   String text;
   Grid({required this.image0,required this.image1,required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              image0,
              width: 300,
              height: 135,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    image1,
                    width: 90,
                    height: 90,
                  ),
                   Text(
                      text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}