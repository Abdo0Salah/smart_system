import 'package:flutter/material.dart';
import 'package:smart_system/screens/assignment/assinment_screen.dart';
import 'package:smart_system/screens/attachment/attachment_screen.dart';
import 'package:smart_system/screens/feedback_screen.dart';
import 'package:smart_system/screens/meeting_screen.dart';
import 'package:smart_system/screens/post/post_screen.dart';
import 'package:smart_system/widget/material_item.dart';


import 'models/material_model.dart';

class MatPagee extends StatefulWidget {
  static const String routeName = 'mat';
  List<MaterialMoel> materialModel=[
  MaterialMoel("Posts", "assets/images/posts.png",0),
  MaterialMoel("Attachment", "assets/images/attachment.png",1),
  MaterialMoel("Feedback", "assets/images/feedback.png",2),
  MaterialMoel("Assignments", "assets/images/assignments.png",3),
  MaterialMoel("Meeting", "assets/images/meeting.png",4),

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
          Navigator.pushNamed(
            context,
            AttachmentScreen.routeName,
          );
        }
        break;
      case 2:
        {
          Navigator.pushNamed(
            context,
            FeedbackScreen.routeName,
          );
        }
        break;

      case 3:
        {
          Navigator.pushNamed(
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
