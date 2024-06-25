import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/admin/screens/admin_home/Staff%20Tap/staff_member.dart';
import 'package:smart_system/admin/screens/admin_home/profile%20Tap/profile_screen.dart';

import '../../model/admin_home_model.dart';
import '../../widget/adminHome-widget.dart';
import 'Students Tap/Students_List.dart';
import 'courses tap/courses.dart';

class AdminHomeScreen extends StatefulWidget {
  static const String routeName = 'AdminHomeScreen';
  List<AdminHomeModel> adminHomeModel = [
    AdminHomeModel("Students", "assets/images/admin-student.png", 0),
    AdminHomeModel("Courses", "assets/images/admin-courses.png", 1),
    AdminHomeModel("Staff members", "assets/images/adminStaff-member.png", 2),
    AdminHomeModel("Profile", "assets/images/admin-profile.png", 3),
    AdminHomeModel("Log Out", "assets/images/admin-logOut.png", 4),
  ];

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 15.w),
                      child: CircleAvatar(
                        backgroundImage: const AssetImage("assets/images/Fci-logo.png"),
                        radius: 35.r,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Text(
                        "Admin@gmail.com",
                         style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
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
                  height: 50.h,
                ),
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: widget.adminHomeModel
                        .map((home) => InkWell(
                              child: AdminHomeWidget(home),
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
          StudentsList.routeName,
        );
      }
      break;
      case 1:
        {
          Navigator.pushNamed(
            context,
            CoursesScreen.routeName,
          );
        }
        break;
    case 2:
      {
        Navigator.pushNamed(
          context,
          StaffMember.routeName,
        );
      }
      break;

   case 3:
      {
        Navigator.pushNamed(
          context,
          ProfileAdmin.routeName,
        );
      }
      break;

    // case 4:
    //   {
    //     Navigator.pushNamed(
    //       context,
    //       AttendanceScreen.routeName,
    //     );
    //   }
    //   break;
    }
  }
}
