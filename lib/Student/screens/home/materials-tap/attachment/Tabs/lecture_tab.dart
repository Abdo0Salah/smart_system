import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../doctor/screens/courses tap/doctor_attachment/doctor_lecture_atta.dart';
import '../../../../../widget/lecture_item.dart';
import '../lecture_atta.dart';
import '../lecture_atta-details.dart';

class LectureTap extends StatelessWidget {
   LectureTap({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0).w,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          children:<Widget>[
            InkWell(child: LectureItem(num: "01",),
            onTap: () {
              Navigator.pushNamed(
                context,
                LectureAttavhmentDetails.routeName,
              );
            },),
            InkWell(  onTap: () {
              Navigator.pushNamed(
                context,
                LectureAttavhmentDetails.routeName,
              );
            },
                child: LectureItem(num: "02")),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    LectureAttavhmentDetails.routeName,
                  );
                },
                child: LectureItem(num: "03")),


          ],


        ),
      ),
    );
  }
}
