import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_attachment.dart';

import 'doctor_subject_group.dart.dart';

class AddNewGroup extends StatelessWidget {
  static const String routeName = 'AddNewGroup';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Selected Topic",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: Colors.black,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffF0F3F7),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding:  EdgeInsets.all(30.w),
          child: SizedBox(
            height: 48.h,
            width: 48.w,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  DoctorSubjectGroups.routeName,
                );
              },
              elevation: 10,
              backgroundColor: const Color(0xff4C6ED7),
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.r),
                    topRight: Radius.circular(60.r),
                  ),
                ),
                child: Image.asset('assets/images/doctor/correct.png'),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.w, bottom: 5.h),
                child: Text(
                  'Group name',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(15.w),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  filled: true,
                  fillColor: const Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color(0xffBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                )),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.w, bottom: 5.h, top: 10.h),
                child: Text(
                  'Doctor /Staff ‘s name',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(15.w),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  filled: true,
                  fillColor: const Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color(0xffBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  hintText: 'Ehab Rousdy',
                )),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.w, bottom: 5.h, top: 10.h),
                child: Text(
                  'Description of Group',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(15.w),
                child: TextFormField(
                    decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(
                      vertical: 35.h, horizontal: 5.w),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  filled: true,
                  fillColor: const Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color(0xffBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  hintText:
                      'موضوعات مختاره /الفرقه التالته /التيرم التاني 2023_2024',
                )),
              ),
              SizedBox(
                  height: 50.h),
              Padding(
                padding:  EdgeInsets.all(10.w),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                        child: Icon(
                          Icons.push_pin_outlined,
                          size: 30.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pin Group',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                            ),
                            ),
                            Container(
                              width: 280.w,
                              height: 1.h,
                              color: const Color(0xff554A4A),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex:1,child: Image.asset('assets/images/doctor/line-md_switch-filled.png')),
                    ],
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
