import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/doctor_select_courses_model.dart';


class DoctorSelectCoursesWidget extends StatelessWidget {
  DoctorSelectCoursesModel doctorSelectCoursesModel;
  DoctorSelectCoursesWidget(this.doctorSelectCoursesModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        width: 20.w,
        height: 20.h,
        child: Row(
          children: [
            Expanded(child: Image.asset(doctorSelectCoursesModel.image , width: 200,
            fit: BoxFit.cover,)),
            Expanded(
              child: Text(
                doctorSelectCoursesModel.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.fjordOne(
                    fontSize: 17.sp, fontWeight: FontWeight.w400,
                color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

