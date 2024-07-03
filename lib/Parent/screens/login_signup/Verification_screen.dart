import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/doctor/screens/login_signup/forget_pass.dart';
import 'package:smart_system/parent/screens/login_signup/reset_password_screen.dart';


class ParentVerificationScreen extends StatelessWidget {
  static const String routeName = 'ParentVerificationScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Verification",
            style: GoogleFonts.fjordOne(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          iconTheme:  IconThemeData(color: Colors.black, size: 15.sp),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70.h),
                    child: Text("Enter Verification Code",
                        style: GoogleFonts.fjordOne(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(50.w, 50.h),
                            side: BorderSide(
                              color: const Color(0xff444444),
                              width: 1.w,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1.r,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "3",
                            style: GoogleFonts.montserrat(
                              color: const Color(0xff444444),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(50.w, 50.h),
                            side: BorderSide(
                              color: const Color(0xff444444),
                              width: 1.w,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1.r,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "1",
                            style: GoogleFonts.montserrat(
                              color: const Color(0xff444444),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(50.w, 50.h),
                            side: BorderSide(
                              color: const Color(0xff444444),
                              width: 1.w,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1.r,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "8",
                            style: GoogleFonts.montserrat(
                              color: const Color(0xff444444),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(50.w, 50.h),
                            side: BorderSide(
                              color: const Color(0xff444444),
                              width: 1.w,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1.r,
                            ),
                          ),
                          onPressed: () {},
                          child:  Text(
                            "9",
                            style:GoogleFonts.montserrat(
                              color: const Color(0xff444444),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(25.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex:4,
                          child: Text("If you did’t receive a code, ",
                              style: GoogleFonts.fjordOne(
                                color: const Color(0xffABABAB),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                        Expanded(flex:2,
                          child: Text("Resend",
                              style: GoogleFonts.fjordOne(
                                color: const Color(0xffE85C4D),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(20.w),
                    child: TextButton(
                      style: OutlinedButton.styleFrom(
                        side:  BorderSide(
                          color: const Color(0xffbccad9),
                          style: BorderStyle.solid,
                          width: 2.5.w,
                        ),
                        fixedSize: Size(250.w, 60.h),
                        backgroundColor: const Color(0xffcbd9f1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.r),
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed(ParentResetPasswordScreen.routeName);
                      },
                      child:  Text(
                        "Send",
                        style: GoogleFonts.fjordOne(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
