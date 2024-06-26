import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/Student/screens/home/profile-tap/profile_screen.dart';
import 'package:smart_system/Student/screens/home/student-result/student_result.dart';
import 'package:smart_system/Student/screens/login_signup/login_screen.dart';

import '../../models/home_model.dart';
import '../../widget/home_widget.dart';

import 'Attendance-tap/attendance_screen.dart';
import 'Quiz-tap/quiz_screen.dart';
import 'notification/notification_screen.dart';
import 'subject-reg-tap/subject_registration.dart';
import 'materials-tap/Materials.dart';



class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';
  List<HomeModel> homeModel = [
    HomeModel("Subject Registration", "assets/images/note.png", 0),
    HomeModel("Materials", "assets/images/material.png", 1),
    HomeModel("TimeTable", "assets/images/timeTable.png", 2),
    HomeModel("Notification", "assets/images/Notification.png", 3),
    HomeModel("Student Attendance", "assets/images/Attendence.png", 4),
    HomeModel("Profile", "assets/images/Profile.png", 5),
    HomeModel("Student Results", "assets/images/Results.png", 6),
    HomeModel("Quizzes", "assets/images/Quizzes.png", 7),
    HomeModel("Log Out", "assets/images/admin-logOut.png", 8),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Container( color: Colors.blue,
        //     child: const Column()),
        backgroundColor:  const Color(0xffF5F9FE),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h , left: 15.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffC4C4C4),
                        radius: 30.r,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w , top: 10.h),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Student name",
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
                    const Icon(
                      Icons.close,
                      size: 35,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
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
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: widget.homeModel
                        .map((home) => InkWell(
                              child: HomeWidget(home),
                              onTap: () {
                                go(home.index);
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

  void go(int index) {
    switch (index) {
      case 0:
        {
          Navigator.pushNamed(
            context,
            SubjectRegistration.routeName,
          );
        }
        break;

      case 1:
        {
          Navigator.pushNamed(
            context,
            MaterialsScreen.routeName,
          );
        }
        break;
      // case 2:
      //   {
      //     Navigator.pushNamed(
      //       context,
      //       T.routeName,
      //     );
      //   }
      //   break;

       case 3:
        {
        Navigator.pushNamed(
            context,
          NotificationScreen.routeName,
          );
        }
        break;
      case 4:
        {
          Navigator.pushNamed(
            context,
            AttendanceScreen.routeName,
          );
        }
        break;
      case 5:
        {
          Navigator.pushNamed(
            context,
            Profile.routeName,
          );
        }
        break;
      case 6:
        {
          Navigator.pushNamed(
            context,
            StudentResultScreen.routeName,
          );
        }
        break;
      case 7:
        {
          Navigator.pushNamed(
            context,
            QuizScreen.routeName,
          );
        }
        break;
      case 8:
        {
          Navigator.pushNamed(
            context,
            LoginScreen.routeName,
          );
        }
        break;
    }
  }
}
