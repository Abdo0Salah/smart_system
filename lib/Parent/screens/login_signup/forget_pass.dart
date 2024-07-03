import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/parent/screens/login_signup/Verification_screen.dart';


class ParentForgetPassword extends StatelessWidget {
  static const String routeName = 'ParentForgetPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(color: Colors.black,size: 15.sp),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffF0F3F7),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w , vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(30.w),
                child:
                Center(child: Image.asset('assets/images/Login/Reset password-bro 1.png')),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 8.h , bottom: 12.h , left: 8.w , right: 8.w),
                child: Text('forget password',
                  style: GoogleFonts.fjordOne(
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Divider(
                thickness: 2.8.h,
                color: const Color(0xff1B406D),
                endIndent: 175.w,

              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.h , bottom: 20.h , left: 10.w , right: 10.w),
                child: Text('Provide your email for which  you \nwant to reset your password !',
                  style: GoogleFonts.fjordOne(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.w , top: 12.h),
                child: Text('phone number',
                  style: GoogleFonts.fjordOne(
                    color: const Color(0xff4084C3),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 8.h , bottom: 8.h ),
                child: TextFormField(
                  // controller: ,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xff1B406D),
                        width: 3.w,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'Enter phone number',
                    hintStyle: GoogleFonts.fjordOne(
                      fontSize: 14.sp,
                    ),
                    prefixIcon:  Icon(Icons.phone_in_talk, color: const Color(0xff1B406D),size: 15.sp,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25.h),
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side:  BorderSide(color: const Color(0xff7aa1c9),
                      style: BorderStyle.solid,
                      width: 2.5.w,
                    ),
                    fixedSize: Size(350.w, 55.h),
                    backgroundColor: const Color(0xff8bb8e3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed(ParentVerificationScreen.routeName);
                  },
                  child:
                  Text(
                    "Next",
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
      ),
    );
  }
}
