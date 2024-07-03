import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/doctor/model/doctor_group_model.dart';
import 'package:smart_system/doctor/widget/doctor_groub_item.dart';

import 'add_new_group.dart';
import 'doctor_mat_page.dart';



class DoctorSubjectGroups extends StatelessWidget {
  static const String routeName = 'DoctorSubjectGroups';
  const DoctorSubjectGroups({super.key});
  @override
  Widget build(BuildContext context) {
    DoctorGroupModel c =DoctorGroupModel(groupName: "groupName",
        doctorName: "doctorName", subjectName: "subjectName");
    return Scaffold(
      backgroundColor:const Color(0xffEFF3F7FF)
      ,
      appBar: AppBar(
        backgroundColor:Colors.transparent ,
        elevation: 0,
        title: Text('Selected topic',
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(8.w),
            child: Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AddNewGroup.routeName,
                    );

                  },
                  child: Container(
                    width: 150.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          const Expanded(flex: 1,
                            child: Icon(Icons.add,
                            color:Colors.white,),
                          ),
                          Expanded(flex: 3,
                            child: Text(
                              "Add New Group",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child:InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(DoctorMatPagee.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.r),
                        topLeft: Radius.circular(25.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(12.w),
                      child: const Text("All Groups"),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder:  (context, index) =>
                            DoctorGroubItem(doctorgroubModel: c
                            ),
                        itemCount: 9,
                      ),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
