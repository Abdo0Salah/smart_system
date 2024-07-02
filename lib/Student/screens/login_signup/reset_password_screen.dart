import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';



class ResetPasswordScreen extends StatelessWidget {
  static const String routeName = ' Rest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
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
                    style: TextStyle(
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
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 100.h, bottom: 40.h , left: 20.w , right: 20.w),
              child: TextFormField(
                // controller: ,
                style: const TextStyle(color: Color(0xff746868)),
                decoration: const InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.remove_red_eye,
                  color: Color(0xff1B406D),
                  ),
                  hintText: 'كلمة المرور الجديدة',
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
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
                child: Text(
                  "Save",
                  style: TextStyle(
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

