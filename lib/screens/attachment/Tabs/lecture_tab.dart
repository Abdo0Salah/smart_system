import 'package:flutter/material.dart';


import '../../../widget/lecture_item.dart';
import '../lecture_atta.dart';

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
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          children:<Widget>[
            InkWell(child: LectureItem(),
            onTap: () {
              Navigator.pushNamed(
                context,
                LectureAttavhment.routeName,
              );
            },),
            LectureItem(),
            LectureItem(),
            LectureItem(),
            LectureItem(),
            LectureItem(),
            LectureItem(),

          ],


        ),
      ),
    );
  }
}
