import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/doctor/screens/doctor_home.dart';

import '../../profile Tap/profile_screen.dart';
import 'creat_meeting.dart';

class MeetingInformationScreen extends StatefulWidget {
  static const String routeName = 'MeetingInformationScreen';

  const MeetingInformationScreen({super.key});

  @override
  State<MeetingInformationScreen> createState() =>
      _MeetingInformationScreenState();
}

class _MeetingInformationScreenState extends State<MeetingInformationScreen> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Ink(
              decoration: const ShapeDecoration(
                color: Color(0xff8EAFD9),
                shape: RoundedRectangleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    CreateMeetingScreen.routeName,
                  );
                },
              ),
            ),
          ),
        ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle edit meeting action
                          },
                          icon: const Icon(
                            Icons.edit,
                          ),
                          label: Text(
                            'Edit Meeting',
                            style: GoogleFonts.fjordOne(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffA1D8A1),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle delete meeting action
                          },
                          icon: const Icon(Icons.delete),
                          label: Text(
                            'Delete Meeting',
                            style: GoogleFonts.fjordOne(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFB5B5B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 17.sp,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 35),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 14.sp,
        iconSize: 30,
        elevation: 10,
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DoctorHomeScreen.routeName,
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(Icons.table_view_outlined),
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   DoctorHomeScreen.routeName,
                // );
              },
            ),
            label: 'TimeTable',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(
                Icons.account_circle_outlined,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DoctorProfile1.routeName,
                );
              },
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
