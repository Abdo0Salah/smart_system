import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/screens/Quiz/quiz_screen.dart';
import '../../models/home_model.dart';
import '../../widget/home_widget.dart';
import 'subject_registration.dart';
import '2.dart';
import '3.dart';
import '4.dart';
import '5.dart';
import '6.dart';
import '7.dart';
// import '8.dart';

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
        backgroundColor:  Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffC4C4C4),
                        radius: 40.r,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Student name",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                            Text(
                              "201524587545@fci.zu.edu.eg",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp),
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
          Navigator.pushReplacementNamed(
            context,
            M.routeName,
          );
        }
        break;
      case 2:
        {
          Navigator.pushReplacementNamed(
            context,
            T.routeName,
          );
        }
        break;

      case 3:
        {
          Navigator.pushReplacementNamed(
            context,
            N.routeName,
          );
        }
        break;
      case 4:
        {
          Navigator.pushNamed(
            context,
            Ss.routeName,
          );
        }
        break;
      case 5:
        {
          Navigator.pushNamed(
            context,
            P.routeName,
          );
        }
        break;
      case 6:
        {
          Navigator.pushNamed(
            context,
            S.routeName,
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
    }
  }
}
