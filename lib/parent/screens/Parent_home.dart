import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/parent/screens/parent_home/faculty_calls%20tap/faculty_calls.dart';
import 'package:smart_system/parent/screens/parent_home/profile%20Tap/profile_screen.dart';
import 'package:smart_system/parent/screens/parent_home/student_TimeTable_tap/student_timeTable.dart';
import '../model/parent_home_model.dart';
import '../widget/parent_home_widget.dart';
import 'login_signup/login_screen.dart';





class ParentHomeScreen extends StatefulWidget {
  static const String routeName = 'ParentHomeScreen';
  List<ParentHomeModel> parentHomeModel = [
    ParentHomeModel("Faculty Calls", "assets/images/faculty-calls.png", 0),
    ParentHomeModel("Student TimeTable", "assets/images/timeTable.png", 1),
    ParentHomeModel("Log Out", "assets/images/admin-logOut.png", 2),
    ParentHomeModel("Profile", "assets/images/Profile.png", 3),

  ];

  @override
  State<ParentHomeScreen> createState() => _ParentHomeScreenState();
}

class _ParentHomeScreenState extends State<ParentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F9FE),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              "Parent name",
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
                  height: 100.h,
                ),
                Expanded(
                  child: GridView(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: widget.parentHomeModel
                        .map((home) =>
                        InkWell(
                          child: ParentHomeWidget(home),
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
            FaculityCalls.routeName,
          );
        }
        break;

    case 1:
      {
        Navigator.pushNamed(
          context,
          StudentTimeTableScreen.routeName,
        );
      }
      break;
      case 2:
        {
          Navigator.pushNamed(
            context,
            ParentLoginScreen.routeName,
          );
        }
        break;

      case 3:
        {
          Navigator.pushNamed(
            context,
            ParentProfile1.routeName,
          );
        }
        break;
    }
  }
}
