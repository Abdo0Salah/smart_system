import 'package:flutter/material.dart';
import 'package:smart_system/doctor/widget/doctor_groub_item.dart';
import 'package:smart_system/models/group_model.dart';
import 'package:smart_system/widget/groub_item.dart';

import '../../../admin/screens/admin_home/Students Tap/Student_list-result.dart';
import 'doctor_mat_page.dart';
import '../../model/doctor_group_model.dart';
import 'add_new_group.dart';


class DoctorSubjectGroups extends StatelessWidget {
  static const String routeName = 'DoctorSubjectGroups';
  const DoctorSubjectGroups({super.key});
  @override
  Widget build(BuildContext context) {
    DoctorGroupModel c =DoctorGroupModel(groupName: "groupName", doctorName: "doctorName", subjectName: "subjectName");
    return Scaffold(
      backgroundColor:Color(0xffEFF3F7FF)
      ,
      appBar: AppBar(
        backgroundColor:Colors.transparent ,
        elevation: 0,
        title: Text('Selected topic',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AddNewGroup.routeName,
                    );

                  },
                  child: Container(
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.add,
                          color:Colors.white,),
                          Text(
                            "Add New Group",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    width: 130,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
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
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("All Groups"),
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
