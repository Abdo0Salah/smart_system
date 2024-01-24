import 'package:flutter/material.dart';
import 'package:smart_system/screens/assinment_screen.dart';
import 'package:smart_system/screens/attachment/attachment_screen.dart';
import 'package:smart_system/screens/feedback_screen.dart';
import 'package:smart_system/screens/meeting_screen.dart';
import 'package:smart_system/screens/post_screen.dart';
import 'package:smart_system/shared/material_item.dart';
import 'package:smart_system/subject_group.dart';

import 'models/material_model.dart';

class MatPagee extends StatefulWidget {
  static const String routeName = 'mat';
  List<MaterialMoel> materialModel=[
  MaterialMoel("Posts", "assets/image/posts.png",0),
  MaterialMoel("Attachment", "assets/image/attachment.png",1),
  MaterialMoel("Feedback", "assets/image/feedback.png",2),
  MaterialMoel("Assignments", "assets/image/assignments.png",3),
  MaterialMoel("Meeting", "assets/image/meeting.png",4),

  ];

  @override
  State<MatPagee> createState() => _MatPageeState();
}

class _MatPageeState extends State<MatPagee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        appBar: AppBar(
          title: const Text("Network"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white ,
                  hoverColor:Colors.red ,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  suffixIcon: const Icon(Icons.search),
                  label: const Text("search"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 60,
                      crossAxisSpacing: 50),
                  children: widget.materialModel
                      .map((mat) => InkWell(
                            child: MaterialItem(mat),
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
            PostScreen.routeName,
          );
        }
        break;

      case 1:
        {
          Navigator.pushReplacementNamed(
            context,
            AttachmentScreen.routeName,
          );
        }
        break;
      case 2:
        {
          Navigator.pushReplacementNamed(
            context,
            FeedbackScreen.routeName,
          );
        }
        break;

      case 3:
        {
          Navigator.pushReplacementNamed(
            context,
            AssinmentScreen.routeName,
          );
        }
        break;
      case 4:
        {
          Navigator.pushNamed(
            context,
            MeetingScreen.routeName,
          );
        }
        break;
    }
  }
}
