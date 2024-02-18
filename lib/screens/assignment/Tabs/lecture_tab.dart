import 'package:flutter/material.dart';
import '../../../widget/lecture_assignment_item.dart';
class LectureTap extends StatelessWidget {
   LectureTap({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(backgroundColor:Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return
            SizedBox(height: 15,);
          },
       itemBuilder: (context, index) {
         return   InkWell(child: LectureAssignmentItem(false),
           onTap: () {
             // Navigator.pushNamed(
             //   context,
             //   LectureAttavhment.routeName,
             //);
           },);

       },
          itemCount: 2,


        ),
      ),
    );
  }
}
