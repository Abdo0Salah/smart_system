import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../model/doctor_select_courses_model.dart';

import '../../widget/doctor_select_courses_widget.dart';
import 'doctor_courses.dart';


class DoctorSelectCoursesScreen extends StatefulWidget {
  static const String routeName = 'DoctorSelectCoursesScreen';
  List<DoctorSelectCoursesModel> doctorSelectCoursesModel = [
    DoctorSelectCoursesModel("Selected Topic", "assets/images/Selected Topic.png", 0),
    DoctorSelectCoursesModel("Network", "assets/images/Network.png", 1),
    DoctorSelectCoursesModel("Robotics", "assets/images/Robotics.png", 2),
    DoctorSelectCoursesModel(
        "image processing", "assets/images/image processing.png", 3),
    DoctorSelectCoursesModel("Selected Topic", "assets/images/Selected Topic.png", 0),
    DoctorSelectCoursesModel("Network", "assets/images/Network.png", 1),
    DoctorSelectCoursesModel("Robotics", "assets/images/Robotics.png", 2),
    DoctorSelectCoursesModel(
        "image processing", "assets/images/image processing.png", 3),
  ];

  @override
  State<DoctorSelectCoursesScreen> createState() => _DoctorSelectCoursesScreenState();
}

class _DoctorSelectCoursesScreenState extends State<DoctorSelectCoursesScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Select Courses",
            style: GoogleFonts.gabriela(
                fontWeight: FontWeight.w400, fontSize: 22.sp,
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
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                    ),
                    children: widget.doctorSelectCoursesModel
                        .map((home) => InkWell(
                      child: DoctorSelectCoursesWidget(home),
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

                Padding(
                  padding:
                  const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: Center(
                    child: TextButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xffbccad9),
                          style: BorderStyle.solid,
                          width: 2.5,
                        ),
                        fixedSize: Size(200, 50),
                        backgroundColor: Color(0xffcbd9f1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(DoctorCoursesScreen.routeName);
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
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
