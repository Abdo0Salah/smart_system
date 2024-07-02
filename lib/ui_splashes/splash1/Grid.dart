import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Grid extends StatelessWidget {
  String image0;
  String image1;
  String text;
  Grid({required this.image0, required this.image1, required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            // child:
            child: Container(
              width: 150.w,
              height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: const Color(0xff1B406D), // Border color
                  width: 3, // Border width
                ),
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                children: [
                  Image.asset(
                    image1,
                    width: 90.w,
                    height: 90.h,
                  ),
                  Text(text,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
