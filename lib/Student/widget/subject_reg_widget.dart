import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/subject_reg_model.dart';

class SubjectRegistrationWidget extends StatelessWidget {
  SubjectRegistrationModel subjectRegistrationModel;
  SubjectRegistrationWidget(this.subjectRegistrationModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity.w,
          decoration: const BoxDecoration(
            color: Color(0xffE8EAEC),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 2),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subjectRegistrationModel.no ,
                style: GoogleFonts.gabriela(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              Text(
                "-",
                style: GoogleFonts.gabriela(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              Text(
                subjectRegistrationModel.subjectCode ,
                style: GoogleFonts.gabriela(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              Text(
                subjectRegistrationModel.subjectCredit,
                style: GoogleFonts.gabriela(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              Text(
                "",
                style: GoogleFonts.gabriela(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
