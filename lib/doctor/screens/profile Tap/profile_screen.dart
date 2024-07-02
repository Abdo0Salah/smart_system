
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/admin/screens/admin_home/admin-home.dart';
import 'package:smart_system/admin/screens/admin_home/profile%20Tap/profile_screen2.dart';
import 'package:smart_system/doctor/screens/doctor_home.dart';
import 'package:smart_system/doctor/screens/profile%20Tap/profile_screen2.dart';

class DoctorProfile1 extends StatelessWidget {
  static const String routeName = 'DoctorProfile1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xffF0F3F7),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/admin/profile1.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Doctor name",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2C3E50),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6 , bottom: 40),
                      child: Text("20CS1H2103@kristujayanti.com",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2C3E50),
                        ),
                      ),
                    ),
                    TextButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xff2C3E50),
                          style: BorderStyle.solid,
                          width: 2.5,
                        ),
                        fixedSize: Size(224, 60),
                        backgroundColor: Color(0xff2C3E50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed(DoctorProfile2.routeName);
                      },
                      child:
                      Padding(
                        padding:  EdgeInsets.only(left: 30.w),
                        child: Row(
                          children: [
                            Expanded(flex:2,
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 20.sp,
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
                                    size: 28.sp,
                                    Icons.edit
                                ),
                              ),
                            ),
                          ],),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    TextButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xff2C3E50),
                          style: BorderStyle.solid,
                          width: 2.5,
                        ),
                        fixedSize: Size(224, 60),
                        backgroundColor: Color(0xff2C3E50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed(DoctorHomeScreen.routeName);
                      },
                      child:
                          Text(
                            "Back To Home",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffD5F4FF),
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
