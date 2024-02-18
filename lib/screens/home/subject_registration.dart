import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/screens/home/home.dart';


class SubjectRegistration extends StatelessWidget {
  static const String routeName = 'SubjectRegistration';

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
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(
                            context,
                            HomeScreen.routeName,
                          );
                        },
                        child: const Icon(
                          Icons.close,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Subjects Registration By Student",
                    style: GoogleFonts.gabriela(
                        fontWeight: FontWeight.w400, fontSize: 18.sp),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    "Max hours for Registration           18",
                    style: GoogleFonts.gabriela(
                        color: const Color(0xff006600),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 60.h,
                    decoration: const BoxDecoration(
                      color: Color(0xffE8EAEC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                        ),
                      ],
                      // gradient: LinearGradient(
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      //   colors: [Colors.grey, Color(0xffE8EAEC)],
                      // ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
