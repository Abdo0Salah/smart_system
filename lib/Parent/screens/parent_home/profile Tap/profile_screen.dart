
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/parent/screens/parent_home/profile%20Tap/profile_screen2.dart';

import '../../Parent_home.dart';


class ParentProfile1 extends StatelessWidget {
  static const String routeName = 'ParentProfile1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
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
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(30.w),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('assets/images/admin/profile1.png'),
                      Padding(
                        padding:  EdgeInsets.all(8.w),
                        child: Text("Parent name",
                          style: GoogleFonts.ubuntu(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff2C3E50),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 6.h , bottom: 40.h),
                        child: Text("20CS1H2103@kristujayanti.com",
                          style:  GoogleFonts.ubuntu(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff2C3E50),
                          ),
                        ),
                      ),
                      TextButton(
                        style: OutlinedButton.styleFrom(
                          side:  BorderSide(color: const Color(0xff2C3E50),
                            style: BorderStyle.solid,
                            width: 2.5.w,
                          ),
                          fixedSize: Size(210.w, 60.h),
                          backgroundColor: const Color(0xff2C3E50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).pushNamed(ParentProfile2.routeName);
                        },
                        child:
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Row(
                            children: [
                              Expanded(flex:2,
                                child: Text(
                                  "Edit Profile",
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffD5F4FF),
                                  ),
                                ),
                              ),
                              Expanded(flex:1,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: 20.w),
                                  child: Icon(
                                      color: const Color(0xffD5F4FF),
                                      size: 22.sp,
                                      Icons.edit
                                  ),
                                ),
                              ),
                            ],),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                        height: 20.h,
                      ),
                      TextButton(
                        style: OutlinedButton.styleFrom(
                          side:  BorderSide(color: const Color(0xff2C3E50),
                            style: BorderStyle.solid,
                            width: 2.5.w,
                          ),
                          fixedSize: Size(210.w, 60.h),
                          backgroundColor: const Color(0xff2C3E50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).pushNamed(ParentHomeScreen.routeName);
                        },
                        child:
                            Text(
                              "Back to Home",
                              style: GoogleFonts.ubuntu(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffD5F4FF),
                              ),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
