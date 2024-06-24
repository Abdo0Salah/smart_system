import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'course_name.dart';

class CourseNameQrScreen extends StatelessWidget {
  static const String routeName = 'CourseNameQrScreen';

  const CourseNameQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course name",
          style: GoogleFonts.fjordOne(
            fontWeight: FontWeight.w400,
            fontSize: 22.sp,
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffF5F9FE),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Container(
                  height: 300.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/qrIcon.png',
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 25.h) ,
                decoration: BoxDecoration(
                  color: const Color(0xff8EAFD9),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(CourseNameQr.routeName);
                      },
                      child: Text(
                        'Finish',
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w300,
                          fontSize: 20.sp,
                          fontStyle: FontStyle.italic,
                          color: Colors.black
                        ),
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
                      size: 20,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
