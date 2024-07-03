import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/doctor/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/parent/screens/login_signup/login_screen.dart';


class ParentResetPasswordScreen extends StatelessWidget {
  static const String routeName = ' ParentResetPasswordScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(color: Colors.black, size: 15.sp),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffF0F3F7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 30.h, bottom: 15.h, right: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'اعادة ضبط كلمة المرور',
                    style: GoogleFonts.fjordOne(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    thickness: 3.h,
                    color: const Color(0xff1B406D),
                    indent: 130.w,
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10.w),
              child: Text(
                'fci.zu.edu.eg@21365468098 التابعة ل',
                style: GoogleFonts.fjordOne(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 100.h, bottom: 40.h , left: 20.w , right: 20.w),
              child: TextFormField(
                // controller: ,
                style: const TextStyle(color: Color(0xff746868)),
                decoration:  InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.remove_red_eye,size: 15.sp,
                    color: const Color(0xff1B406D),
                  ),
                  hintText: 'كلمة المرور الجديدة',
                  hintStyle: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  )
                ),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(top: 35.h, bottom: 20.h, left: 20.w, right: 20.w),
              child: TextButton(
                style: OutlinedButton.styleFrom(
                  side:  BorderSide(
                    color: const Color(0xffbccad9),
                    style: BorderStyle.solid,
                    width: 2.5.w,
                  ),
                  fixedSize: Size(450.w, 70.h),
                  backgroundColor: const Color(0xffcbd9f1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(ParentLoginScreen.routeName);
                },
                child: Text(
                  "Save",
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
      ),
    );
  }
}

