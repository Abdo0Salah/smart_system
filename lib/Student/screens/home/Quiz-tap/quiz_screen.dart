import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/Student/screens/home/Quiz-tap/section-tap.dart';

import 'lecture_tab.dart';

class QuizScreen extends StatelessWidget {
  static const String routeName = 'Quiz';
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [LecturTab(), SectionTap()];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Quiz',
            style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black),
          ),
          centerTitle: true,
        ),
        backgroundColor: const Color(0xffF0F3F7),
        body: DefaultTabController(
          length: 3,
          child: Container(
            child: Column(children: [
              Padding(
                padding:
                     EdgeInsets.only(right: 100.w, left: 20.w, bottom: 10.h),
                child: const TabBar(tabs: [
                  Tab(
                    child:
                        Text("Lectuers", style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child:
                        Text("Sections", style: TextStyle(color: Colors.black)),
                  ),
                ]),
              ),
              Expanded(child: TabBarView(children: tabs)),
            ]),
          ),
        ),
      ),
    );
  }
}
