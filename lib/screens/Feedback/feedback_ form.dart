import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/screens/Feedback/Tabs/content-tap.dart';
import 'package:smart_system/screens/Feedback/Tabs/lecture-tab.dart';
import 'package:smart_system/screens/Feedback/Tabs/section_tap.dart';

class FeedbackForm extends StatefulWidget {
  static const String routeName = 'feedbackForm';

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [ContantTap(), LectureTap(), SectionTap()];
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff7DD1FA), Color(0xffFFFDAF)],
              ),
            ),
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "Feedback Form",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xff555555),
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.all(0),
                    unselectedLabelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3.0),
                        insets: EdgeInsets.symmetric(horizontal:30.0)
                    ),
                    tabs: [

                      Tab(
                        text: "Lecture",
                      ),
                      Tab(
                          text: "Section"),
                      Tab(
                        text: "Content",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(

                      children: [
                        LectureTap(),
                        SectionTap(),
                        ContantTap()
                      ],
                    ),
                  )
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius:
                  //         BorderRadius.only(topRight: Radius.circular(30)),
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       TabBar(tabs: [
                  //         Tab(
                  //           child: Text("All",
                  //               style: TextStyle(color: Colors.black)),
                  //         ),
                  //         Tab(
                  //           child: Text("Lectuers",
                  //               style: TextStyle(color: Colors.black)),
                  //         ),
                  //         Tab(
                  //           child: Text("Sections",
                  //               style: TextStyle(color: Colors.black)),
                  //         ),
                  //       ]),
                  //       Expanded(child: TabBarView(children: tabs))
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
