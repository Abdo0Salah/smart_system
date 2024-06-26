import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LectureItem extends StatelessWidget {
  const LectureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xFFAAC8E4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lecture 01",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21.sp),
            ),
            Text(
              "Topic of the Lecture",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Icon(Icons.file_copy_outlined, size: 15),
                Text(
                  "01 files",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp
                  ),
                ),
              ],
            ),
             Row(
              children: [
                Icon(Icons.ondemand_video_sharp, size: 15),
                Text(
                  "01 video",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 15.r,
                ),
                SizedBox(width: 8.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Uploded by",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 11.sp),
                    ),
                    Text(
                      "D/Ehap",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 11.sp),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
