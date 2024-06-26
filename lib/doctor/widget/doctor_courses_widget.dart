import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/doctor/model/doctor_courses_model.dart';

import '../screens/courses tap/doctor_subject_group.dart.dart';

class DoctorCoursesWidget extends StatelessWidget {
  DoctorCoursesModel doctorCoursesModel;
  DoctorCoursesWidget(this.doctorCoursesModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                doctorCoursesModel.image,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.w, top: 5.h, bottom: 5.h, right: 10.w),
                  child: Text(
                    doctorCoursesModel.title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fjordOne(
                        fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(right: 20.w),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: const Color(0xff8EAFD9),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              child: Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(DoctorSubjectGroups.routeName);
                      },
                      child: Text(
                        'Details',
                        style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.sp,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
