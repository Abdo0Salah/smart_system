import 'package:flutter/material.dart';

import '../models/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(notification.avatar),
        ),
        title: Text(notification.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notification.message),
            SizedBox(height: 4.0),
            Text(notification.date, style: TextStyle(fontSize: 12.0)),
          ],
        ),
      ),
    );
  }
}