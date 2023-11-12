


import 'package:flutter/material.dart';
import 'package:smart_system/screens/assinment_screen.dart';
import 'package:smart_system/screens/attachment/attachment_screen.dart';
import 'package:smart_system/screens/feedback_screen.dart';
import 'package:smart_system/screens/meeting_screen.dart';
import 'package:smart_system/screens/post_screen.dart';
import 'package:smart_system/subject_group.dart';
import 'package:smart_system/theme/my_theme_data.dart';

import 'mat_page.dart';
import 'models/material_model.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  List <MaterialMoel> m = MaterialMoel.getMaterials();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
        initialRoute: MatPagee.routeName,
        routes: {
          SubjectGroups.routeName: (context) =>  SubjectGroups(),
          MatPagee.routeName: (context) =>  MatPagee(m),
         AssinmentScreen.routeName: (context) =>  AssinmentScreen(),
          AttachmentScreen.routeName: (context) =>  AttachmentScreen(),
          FeedbackScreen.routeName: (context) =>  FeedbackScreen(),
          MeetingScreen.routeName: (context) =>  MeetingScreen(),
          PostScreen.routeName: (context) =>  PostScreen(),

        },

    );
  }
}
