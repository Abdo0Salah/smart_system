import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Tabs/all_taps.dart';
import 'Tabs/lecture_tabs.dart';
import 'Tabs/section-taps.dart';

class AttendanceScreen extends StatefulWidget {
  static const String routeName = 'AttendanceScreen';
  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {


  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [AllTaps(), LectureTaps(), SectionTaps()];
    return Scaffold(
        backgroundColor: const Color(0xffEFF3F7FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Attendance  ',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),

            SizedBox(
              height: 20.h,
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 450.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEFF3F7FF),
                ),
                child: DefaultTabController(
                  length: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30).r),
                    ),
                    child: Column(
                      children: [
                        TabBar(tabs: [
                          Tab(
                            child: Text("All",
                                style: TextStyle(color: Colors.black)),
                          ),
                          Tab(
                            child: Text("Lectuers",
                                style: TextStyle(color: Colors.black)),
                          ),
                          Tab(
                            child: Text("Sections",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ]),
                        Expanded(child: TabBarView(children: tabs))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
