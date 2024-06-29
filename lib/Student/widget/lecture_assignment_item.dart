import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/home/materials-tap/assignment/openAssignmentScreen.dart';

class LectureAssignmentItem extends StatelessWidget {
  LectureAssignmentItem(
      {required this.ifSubmitted,
      required this.assignmentDate,
      required this.assignmentLastDare,
      required this.assignmentName});
  bool ifSubmitted = false;
  String assignmentName;
  String assignmentDate;
  String assignmentLastDare;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20).r, color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text(
                "$assignmentName",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
              ),
              const Spacer(),
              const Icon(Icons.file_copy_outlined, size: 15),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                "assign date",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Colors.grey),
              ),
              Spacer(),
              Text(
                "$assignmentDate",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                "$assignmentLastDare",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Colors.grey),
              ),
              Spacer(),
              Text(
                "20 nov 2024",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                " status",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Colors.grey),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(2, 4) // changes position of shadow
                          ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(12).r),
                    color: Color.fromARGB(255, 251, 177, 177)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0).w,
                  child: Text(
                    ifSubmitted ? " Submitted" : " not Submitted",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Visibility(
            visible: ifSubmitted ? false : true,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    OpenAssignmentScreen.routeName,
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 170, 200, 228)),
                ),
                child: Text(
                  "Open Assignment ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
