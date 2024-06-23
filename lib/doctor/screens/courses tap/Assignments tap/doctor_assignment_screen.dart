import 'package:flutter/material.dart';
import '../../../../widget/lecture_assignment_item.dart';
import '../../../widget/doctorlecture_assignment_item.dart';
class DoctorAssignmentScreen extends StatelessWidget {
  static const String routeName = 'DoctorAssignmentScreen';


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(" Assignments "),
        actions: [
          IconButton(
              onPressed: (){

               // Navigator.pushNamed(
                  // context,
                  // AddAttachment.routeName,
            //    );
              },
              color: Colors.black,
              iconSize: 30,
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFFAAC8E4))
              ),
              // hoverColor:  Colors.black,
              icon:   Icon(Icons.add))
        ],
        centerTitle: true,
      ),
      backgroundColor:Color(0xffEFF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return
            SizedBox(height: 15,);
          },
       itemBuilder: (context, index) {
         return   InkWell(child: DoctorlectureAssignmentItem(),
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
