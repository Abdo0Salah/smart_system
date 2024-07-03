import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/parent/screens/login_signup/forget_pass.dart';
import 'package:smart_system/parent/screens/login_signup/signup_screen.dart';

import '../Parent_home.dart';



class ParentLoginScreen extends StatefulWidget {
  static const String routeName = 'ParentLoginScreen';

  @override
  State<ParentLoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ParentLoginScreen> {
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
          children: [
            Padding(
              padding:  EdgeInsets.all(10.w),
              child: Center(
                child: SizedBox(
                    width: 200.w,
                    height: 200.h,
                    child: Image.asset('assets/images/Login/login_logo.png',
                    fit: BoxFit.cover,)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 15.h , left: 15.w, right: 15.w),
              child: Container(
                width: 390.w,
                height: 320.h,
                decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 2.r,
                        blurRadius: 5.r,
                        offset: Offset(0.w, 3.h),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 20.w , top: 20.h , right: 20.w , bottom: 10.h),
                            child: Text('Login',
                              style: GoogleFonts.fjordOne(
                                fontSize: 25.sp,
                                fontWeight:FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 20.w , top: 20.h , right: 20.w , bottom: 10.h),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed(ParentSignUpScreen.routeName);
                              },
                              child: Text('Sign Up',
                                style: GoogleFonts.fjordOne(
                                  fontSize: 25.sp,
                                  fontWeight:FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3.h,
                      color: const Color(0xff1B406D),
                      endIndent: 230.w,
                    ),
                    Expanded(flex: 3,
                      child: Padding(
                        padding:  EdgeInsets.all(10.w),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: const Color(0xff1B406D),
                                width: 3.w,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            hintText: 'Username',
                            hintStyle: GoogleFonts.fjordOne(fontSize: 12.sp),
                            prefixIcon:  Icon(Icons.mail, color: const Color(0xff1B406D),size: 15.sp,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 3,
                      child: Padding(
                        padding:  EdgeInsets.all(10.w),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: const Color(0xff1B406D),
                                width: 3.w,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            hintText: 'Enter Your password',
                            hintStyle: GoogleFonts.fjordOne(fontSize: 12.sp),
                            prefixIcon:  Icon(Icons.password, color: const Color(0xff1B406D),size: 15.sp,),
                            suffixIcon:  Icon(Icons.remove_red_eye, color: const Color(0xff1B406D),size: 15.sp,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 2,
                      child: Padding(
                        padding:  EdgeInsets.all(8.w),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed(ParentForgetPassword.routeName);
                          },
                          child: Text('Forget Password!',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.fjordOne(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 15.h , right: 15.w , left: 15.w , bottom: 15.h),
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side:  BorderSide(color: const Color(0xff7aa1c9),
                      style: BorderStyle.solid,
                      width: 2.w,
                    ),
                    fixedSize: Size(300.w, 60.h),
                    backgroundColor: const Color(0xff8bb8e3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: (){
                   Navigator.of(context).pushNamed(ParentHomeScreen.routeName);
                  },
                  child:
                   Text(
                    "Log In",
                    style: GoogleFonts.fjordOne(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
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
