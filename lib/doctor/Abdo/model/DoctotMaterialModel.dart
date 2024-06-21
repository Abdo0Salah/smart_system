import 'dart:ui';

import 'package:flutter/material.dart';

class DoctorMaterialMoel {
  String name;
  String image;
  int index;

  DoctorMaterialMoel(this.name, this.image, this.index);
  static List<DoctorMaterialMoel> getMaterialsDoctor() {
    return [
      DoctorMaterialMoel("Add Posts", "assets/images/posts.png",0),
      DoctorMaterialMoel("Add Attachment", "assets/images/attachment.png",1),
      DoctorMaterialMoel("Add Assignments", "assets/images/assignments.png",2),
      DoctorMaterialMoel("Add Meeting", "assets/images/meeting.png",3),

    ];
  }




}
