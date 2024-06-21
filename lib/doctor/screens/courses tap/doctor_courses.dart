import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/doctor_courses_model.dart';

import '../../widget/doctor_courses_widget.dart';
import '../doctor_home.dart';

class DoctorCoursesScreen extends StatefulWidget {
  static const String routeName = 'DoctorCoursesScreen';
  List<DoctorCoursesModel> doctorCoursesModel = [
    DoctorCoursesModel("Selected Topic", "assets/images/Selected Topic.png", 0),
    DoctorCoursesModel("Network", "assets/images/Network.png", 1),
    DoctorCoursesModel("Robotics", "assets/images/Robotics.png", 2),
    DoctorCoursesModel(
        "image processing", "assets/images/image processing.png", 3),
    DoctorCoursesModel("Selected Topic", "assets/images/Selected Topic.png", 0),
    DoctorCoursesModel("Network", "assets/images/Network.png", 1),
    DoctorCoursesModel("Robotics", "assets/images/Robotics.png", 2),
    DoctorCoursesModel(
        "image processing", "assets/images/image processing.png", 3),
  ];

  @override
  State<DoctorCoursesScreen> createState() => _DoctorCoursesScreenState();
}

class _DoctorCoursesScreenState extends State<DoctorCoursesScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Container( color: Colors.blue,
        //     child: const Column()),
        backgroundColor: const Color(0xffF5F9FE),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 15.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffC4C4C4),
                        radius: 30.r,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Doctor name",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                            Text(
                              "201524587545@fci.zu.edu.eg",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 8.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          DoctorHomeScreen.routeName,
                        );
                      },
                      child: const Icon(
                        Icons.close,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: GoogleFonts.karla(
                          color: const Color(0xff696969),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(left: 50.w),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.r),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 1.0)),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                  child: Text(
                    'Courses',
                    style: GoogleFonts.fjordOne(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, bottom: 20.h),
                  child: Container(
                    height: 5,
                    width: 200,
                    color: const Color(0xff2C4A7A),
                  ),
                ),
                Expanded(
                  child: GridView(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: widget.doctorCoursesModel
                        .map((home) => InkWell(
                      child: DoctorCoursesWidget(home),
                      onTap: () {
                        // Navigator.pushNamed(
                        //   context,
                        //   SubjectGroups.routeName,
                        // );
                      },
                    ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
