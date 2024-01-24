import 'dart:ui';

import 'package:flutter/material.dart';

class MaterialMoel {
  String name;
  String image;
  int index;

  MaterialMoel(this.name, this.image, this.index);
  static List<MaterialMoel> getMaterials() {
    return [
      MaterialMoel("Posts", "assets/image/posts.png",0),
      MaterialMoel("Attachment", "assets/image/attachment.png",1),
      MaterialMoel("Feedback", "assets/image/feedback.png",2),
      MaterialMoel("Assignments", "assets/image/assignments.png",3),
      MaterialMoel("Meeting", "assets/image/meeting.png",4),

    ];
  }




}
