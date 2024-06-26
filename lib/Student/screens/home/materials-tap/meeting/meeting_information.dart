import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/doctor/screens/doctor_home.dart';

import '../../../../../doctor/screens/courses tap/Create Meeting App/creat_meeting.dart';
import '../../../../../doctor/screens/profile Tap/profile_screen.dart';



class MeetingScreen extends StatefulWidget {
  static const String routeName = 'MeetingScreen';

  const MeetingScreen({super.key});

  @override
  State<MeetingScreen> createState() =>
      _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  int _selectedIndex = 0; //New
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meeting Information",
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 50.h, bottom: 200.h, left: 5.w, right: 5.w),
          child: Card(
            shadowColor: Colors.grey,
            elevation: 20,
            surfaceTintColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Subject Name: Android',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 2,
                    width: 400,
                    color: Colors.black,
                  ),
                  Table(
                    border: TableBorder.symmetric(inside: const BorderSide()),
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Title',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Lecture8',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Meeting Start Time',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              '22/5/2022 at 14:00',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Meeting Link',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: InkWell(
                              onTap: () {
                                // Handle link tap
                              },
                              child: Text(
                                'Join this Meeting',
                                style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 2,
                    width: 400,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 60.0),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }


}
