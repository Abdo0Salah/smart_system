import 'package:flutter/material.dart';
import 'package:smart_system/doctor/screens/courses%20tap/post%20tap/doctorpost_screen.dart';
import 'package:smart_system/doctor/widget/DoctorMaterialItem.dart';
import 'package:smart_system/screens/assignment/assinment_screen.dart';
import 'package:smart_system/screens/meeting_screen.dart';
import 'package:smart_system/screens/post/post_screen.dart';
import '../../model/DoctotMaterialModel.dart';
import 'Assignments tap/doctor_assignment_screen.dart';
import 'doctor_attachment/doctor_attachment_screen.dart';

class DoctorMatPagee extends StatefulWidget {
  static const String routeName = 'DoctorMatPagee';
  List<DoctorMaterialMoel> doctormaterialModel=[
    DoctorMaterialMoel("Add Posts", "assets/images/posts.png",0),
    DoctorMaterialMoel("Add Attachment", "assets/images/attachment.png",1),
    DoctorMaterialMoel("Add Assignments", "assets/images/assignments.png",2),
    DoctorMaterialMoel("Add Meeting", "assets/images/meeting.png",3),

  ];

  @override
  State<DoctorMatPagee> createState() => _DoctorMatPageeState();
}

class _DoctorMatPageeState extends State<DoctorMatPagee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        appBar: AppBar(
          title: const Text("Course name"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,

        ),
        backgroundColor: Color(0xffEFF3F7FF),
        body: Column(
          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 60,
                      crossAxisSpacing: 50),
                  children: widget.doctormaterialModel
                      .map((mat) => InkWell(
                    child: DoctorMaterialItem(mat),
                    onTap: () {
                      go(mat.index);
                    },
                  ))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void go(int index) {
    switch (index) {
      case 0:
        {
          Navigator.pushNamed(
            context,
            DoctorPostScreen.routeName,
            ///
          );
        }
        break;

      case 1:
        {
          Navigator.pushNamed(
            context,
            DoctorAttachmentScreen.routeName,
            ///
          );
        }
        break;

      case 2:
        {
          Navigator.pushNamed(
            context,
            DoctorAssignmentScreen.routeName,
            ///
          );
        }
        break;
      case 3:
        {
          Navigator.pushNamed(
            context,
            MeetingScreen.routeName,
            ///
          );
        }
        break;
    }
  }
}
