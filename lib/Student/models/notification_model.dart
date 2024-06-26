import 'package:flutter/material.dart';

class NotificationModel {
  final String name;
  final String message;
  final String date;
  final IconData avatar;

  NotificationModel({
    required this.name,
    required this.message,
    required this.date,
    required this.avatar,
  });
}