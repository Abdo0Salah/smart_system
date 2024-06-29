import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../widget/lecture_assignment_item.dart';

class AllTap extends StatelessWidget {
  const AllTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(12.0).w,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisSpacing: 20, crossAxisSpacing: 20),
          children: <Widget>[
            LectureAssignmentItem(
              ifSubmitted: true,
              assignmentDate: "17 oct 2024",
              assignmentLastDare: "20 oct 2024",
              assignmentName: "first assignment",
            ),
            LectureAssignmentItem(
              ifSubmitted: false,
              assignmentDate: "17 nov 2024",
              assignmentLastDare: "20 nov 2024",
              assignmentName: "second assignment",
            ),
          ],
        ),
        //  ListView.separated(
        //    separatorBuilder: (context, index) {
        //      return
        //      SizedBox(height: 15.h,);
        //    },
        // itemBuilder: (context, index) {
        //   return   InkWell(child: LectureAssignmentItem(false),
        //     onTap: () {
        //       // Navigator.pushNamed(
        //       //   context,
        //       //   LectureAttavhment.routeName,
        //       //);
        //     },);
        //
        // },
        //    itemCount: 2,
        //
        //
        //  ),
      ),
    );

  }
}
