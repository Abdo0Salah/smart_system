import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/notification_model.dart';
import '../../../widget/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = 'NotificationScreen';
  final List<NotificationModel> notifications = [
    NotificationModel(
        name: "Dr Ehab Roushdy",
        message: "The next lecture we will take the sample Today. Be Ready.",
        date: "Today",
        avatar: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar1.png"),
          backgroundColor: Colors.white,
        )),
    NotificationModel(
      name: "Dr Nabile Lashin",
      message: "There is no lecture this week.",
      date: "2 days ago",
      avatar: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/avatar1.png"),
        backgroundColor: Colors.white,
      ),
    ),
    NotificationModel(
      name: "Dr Osama",
      message: "The next lecture we will take the exam. Be Ready.",
      date: "05/10/2021",
      avatar: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/avatar1.png"),
        backgroundColor: Colors.white,
      ),
    ),
    NotificationModel(
      name: "Dr waleed",
      message: "The lecture is ready. All students read it.",
      date: "02/10/2021",
      avatar: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/avatar1.png"),
        backgroundColor: Colors.white,
      ),
    ),
    NotificationModel(
      name: "Dr Hanaa",
      message: "The next lecture we will take the exam. Be Ready.",
      date: "30/09/2021",
      avatar: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/avatar3.png"),
        backgroundColor: Colors.white,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: GoogleFonts.fjordOne(
            fontWeight: FontWeight.w400,
            fontSize: 22.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return NotificationCard(notification: notification);
        },
      ),
    ));
  }
}
