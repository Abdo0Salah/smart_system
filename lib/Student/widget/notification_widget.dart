import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: notification.avatar,
        ),
        title: Text(
          notification.name,
          style: GoogleFonts.fjordOne(
              fontWeight: FontWeight.w500, fontSize: 15.sp),
        ),
        subtitle: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                notification.message,
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w500, fontSize: 10.sp),
              ),
            ),
            SizedBox(width: 40.w),
            Expanded(
                flex: 1,
                child:
                    Text(notification.date, style: TextStyle(fontSize: 9.sp))),
          ],
        ),
      ),
    );
  }
}
