import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaculityCalls extends StatelessWidget {
  static const String routeName = 'FaculityCalls';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faculty Calls",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffF0F3F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(10.w
            ),
            child: Column(
              children: [
                Text('General',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 120.w,
                  height: 3.h,
                  color: const Color(0xff104A51),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(5.w),
            child: Row(
              children: [
                Expanded(flex:1,child: Image.asset('assets/images/admin/university_logo.png')),
                Expanded(flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("حاسبات ومعلومات الزقازيق",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 6,
                            child: Text("Your student has paid the College Expenses Today.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(flex: 1,
                            child: Text("1m ago.",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff6C6C6C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
            height: 5.h,
          ),
          Padding(
            padding:  EdgeInsets.all(5.w),
            child: Row(
              children: [
                Expanded(flex:1,child: Image.asset('assets/images/admin/university_logo.png')),
                Expanded(flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("حاسبات ومعلومات الزقازيق",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 6,
                            child: Text("Your student has paid the College Expenses Today.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(flex: 1,
                            child: Text("1m ago.",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff6C6C6C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
            height: 5.h,
          ),
          Padding(
            padding:  EdgeInsets.all(5.w),
            child: Row(
              children: [
                Expanded(flex:1,child: Image.asset('assets/images/admin/university_logo.png')),
                Expanded(flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("حاسبات ومعلومات الزقازيق",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 6,
                            child: Text("Your student has paid the College Expenses Today.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(flex: 1,
                            child: Text("1m ago.",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff6C6C6C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
            height: 5.h,
          ),
          Padding(
            padding:  EdgeInsets.all(5.w),
            child: Row(
              children: [
                Expanded(flex:1,child: Image.asset('assets/images/admin/university_logo.png')),
                Expanded(flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("حاسبات ومعلومات الزقازيق",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 6,
                            child: Text("Your student has paid the College Expenses Today.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(flex: 1,
                            child: Text("1m ago.",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff6C6C6C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
            height: 5.h,
          ),
          Padding(
            padding:  EdgeInsets.all(5.w),
            child: Row(
              children: [
                Expanded(flex:1,child: Image.asset('assets/images/admin/university_logo.png')),
                Expanded(flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("حاسبات ومعلومات الزقازيق",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 6,
                            child: Text("Your student has paid the College Expenses Today.",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(flex: 1,
                            child: Text("1m ago.",
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff6C6C6C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
