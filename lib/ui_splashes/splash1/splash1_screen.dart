import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/admin/screens/login_signup/login_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/login_screen.dart';
import 'package:smart_system/parent/screens/login_signup/login_screen.dart';

import '../../Student/screens/login_signup/login_screen.dart';
import 'Grid.dart';



class splash1 extends StatelessWidget{
  static const String routeName = 'splash1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F4F8),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:  EdgeInsets.all(10.w),
              child: Column(
                children: [
                  // SizedBox(
                  //   width: 388.w,
                  //   height: 70.h,
                  // ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                      child: Grid(image0: "assets/images/splash1/Rectangle 4.png", image1: "assets/images/splash1/download (15) 1.png", text:"Student" )),
                  SizedBox(
                    width: 40.w,
                    height: 40.h,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(LoginScreenDoctor.routeName);
                      },
                      child: Grid(image0: "assets/images/splash1/Rectangle 5.png", image1: "assets/images/splash1/images 55559.png", text: "Doctors/Staff")),
                  SizedBox(
                    width: 40.w,
                    height: 40.h,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(ParentLoginScreen.routeName);
                      },
                      child: Grid(image0: "assets/images/splash1/Rectangle 6.png", image1: "assets/images/splash1/download (1) 7.png", text: "Parent")),
                  SizedBox(
                    width: 40.w,
                    height: 40.h,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(LoginScreenAdmin.routeName);
                      },
                      child: Grid(image0: "assets/images/splash1/Rectangle 7.png", image1: "assets/images/splash1/download 1.png", text: "Admin")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}