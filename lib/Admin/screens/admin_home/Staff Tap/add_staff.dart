import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/admin/screens/admin_home/Staff%20Tap/staff_member.dart';

class AddStaff extends StatelessWidget {
  static const String routeName = 'AddStaff';

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
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 15.w, right: 15.w),
              child: Container(
                width: 400.w,
                height: 580.w,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 2.r,
                        blurRadius: 5.r,
                        offset: Offset(0.w, 3.h),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding:  EdgeInsets.only(top: 70.h, bottom: 70.h),
                        child: Text(
                          'Add Staff',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 25.w ,bottom: 8.h),
                      child: Text('Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w , bottom: 25.h, right: 20.w),
                      child: Container(
                        width: 350.w,
                        height: 45.h,
                        child: TextFormField(
                          // controller: ,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffA9A9A9),
                                width: 1.w,
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            prefixIcon: const Icon(Icons.person_pin,
                            color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 25.w ,bottom: 8.h),
                      child: Text('Email Address',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w , bottom: 25.h, right: 20.w),
                      child: Container(
                        width: 350.w,
                        height: 45.h,
                        child: TextFormField(
                          // controller: ,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffA9A9A9),
                                width: 1.w,
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            prefixIcon: const Icon(Icons.email,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 25.w ,bottom: 8.h),
                      child: Text(' Enter the Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w , bottom: 25.h, right: 20.w),
                      child: Container(
                        width: 350.w,
                        height: 45.h,
                        child: TextFormField(
                          // controller: ,
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffA9A9A9),
                                width: 1.w,
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.all(8.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                style: OutlinedButton.styleFrom(
                                  side:  BorderSide(color: Color(0xffFFFFFF),
                                    style: BorderStyle.solid,
                                    width: 2.5.w,
                                  ),
                                  fixedSize: Size(150.w, 45.h),
                                  backgroundColor: const Color(0xffFFFFFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    StaffMember.routeName,
                                  );
                                },
                                child:
                                 Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: TextButton(
                                style: OutlinedButton.styleFrom(
                                  side:  BorderSide(color: const Color(0xff0096FF),
                                    style: BorderStyle.solid,
                                    width: 2.5.w,
                                  ),
                                  fixedSize: Size(150.w, 45.h),
                                  backgroundColor: const Color(0xff0096FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    StaffMember.routeName,
                                  );
                                },
                                child:
                                 Text(
                                  "Add",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
