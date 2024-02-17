import 'dart:ui';

import 'package:flutter/material.dart';

class MaterialMoel {
  String name;
  String image;
  int index;

  MaterialMoel(this.name, this.image, this.index);
  static List<MaterialMoel> getMaterials() {
    return [
      MaterialMoel("Posts", "assets/images/posts.png",0),
      MaterialMoel("Attachment", "assets/images/attachment.png",1),
      MaterialMoel("Feedback", "assets/images/feedback.png",2),
      MaterialMoel("Assignments", "assets/images/assignments.png",3),
      MaterialMoel("Meeting", "assets/images/meeting.png",4),

    ];
  }




}
