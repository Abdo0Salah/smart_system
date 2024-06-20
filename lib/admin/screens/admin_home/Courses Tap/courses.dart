import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/adminHome_courses_model.dart';
import '../../../widget/adminHome_courses_widget.dart';
import '../admin-home.dart';
import 'new_course.dart';

class CoursesScreen extends StatefulWidget {
  static const String routeName = 'CoursesScreen';
  List<AdminHomeCoursesModel> adminHomeCoursesModel = [
    AdminHomeCoursesModel(
        "Selected Topic", "assets/images/Selected Topic.png", 0),
    AdminHomeCoursesModel("Network", "assets/images/Network.png", 1),
    AdminHomeCoursesModel("Robotics", "assets/images/Robotics.png", 2),
    AdminHomeCoursesModel(
        "image processing", "assets/images/image processing.png", 3),
    AdminHomeCoursesModel(
        "Selected Topic", "assets/images/Selected Topic.png", 0),
    AdminHomeCoursesModel("Network", "assets/images/Network.png", 1),
    AdminHomeCoursesModel("Robotics", "assets/images/Robotics.png", 2),
    AdminHomeCoursesModel(
        "image processing", "assets/images/image processing.png", 3),
  ];

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        backgroundColor: const Color(0xffF5F9FE),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.w, top: 30.h, bottom: 10.h),
                  child: Text(
                    'All Courses',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 20.h),
                  child: Container(
                    height: 5,
                    width: 150,
                    color: const Color(0xff2C4A7A),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                    ),
                    children: widget.adminHomeCoursesModel
                        .map((home) => InkWell(
                              child: AdminHomeCoursesWidget(home),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: 65.h,
            width:  65.w,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  NewCourseScreen.routeName,
                );
              },
              elevation: 10,
              backgroundColor: Colors.black,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: const Icon(Icons.add)),
            ),
          ),
        ),
      ),
    );
  }
}
