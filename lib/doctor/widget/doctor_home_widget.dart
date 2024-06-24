import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../model/doctor_home_model.dart';


class DoctorHomeWidget extends StatelessWidget {
  DoctorHomeModel doctorHomeModel;
  DoctorHomeWidget(this.doctorHomeModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Image.asset(doctorHomeModel.image),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Text(
              doctorHomeModel.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.gabriela(
                  fontSize: 15.sp, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
