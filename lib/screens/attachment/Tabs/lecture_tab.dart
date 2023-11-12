import 'package:flutter/material.dart';

import '../../../shared/lecture_item.dart';

class LectureTap extends StatelessWidget {
   LectureTap({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 60,
              crossAxisSpacing: 50),
          children:<Widget>[
            LectureItem(),
          ],


        ),
      ),
    );
  }
}
