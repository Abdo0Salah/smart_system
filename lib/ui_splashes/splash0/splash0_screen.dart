import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/ui_splashes/splash1/splash1_screen.dart';

class splash0 extends StatelessWidget{
  static const String routeName = 'splash0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4084C3),
      body: Center(
        child: Column(
            children:[
              const Spacer(),
              Image.asset('assets/images/splash0/school-management.png',
                width: 300.w,
                height: 256.h,
              ),
              Padding(
                padding:  EdgeInsets.all(8.0.w),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  [
                   Text(
                       "FCI",
                       style: TextStyle(
                         fontSize:40.sp,
                         fontWeight: FontWeight.w700,
                         color: Colors.white,
                       )
                   ),
                   Text(
                       " GUIDER",
                       style: TextStyle(
                         fontSize:30.sp,
                         fontWeight: FontWeight.w700,
                         color: const Color(0xffE1E423)
                       ),
                   ),
                 ],
             ),
              ),
              SizedBox(
                width: 80.w,
                height: 80.h,
              ),
              TextButton(
                style: OutlinedButton.styleFrom(
                    side:  BorderSide(color: const Color(0xff2C4A7A),
                    style: BorderStyle.solid,
                      width: 3.w,
                    ),
                  fixedSize: Size(250.w, 60.h),
                  backgroundColor: Color(0xffF5F5F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed(splash1.routeName);
                },
                  child:
                   Text(
                    "Let‘s Start",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
              ),
              const Spacer(),
            ],
          ),
        ),
    );
  }
}