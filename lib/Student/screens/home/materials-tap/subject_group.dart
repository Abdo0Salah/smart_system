import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../models/group_model.dart';
import '../../../widget/groub_item.dart';
import 'mat_page.dart';
class SubjectGroups extends StatelessWidget {
  static const String routeName = 'SubjectGroups';
  const SubjectGroups({super.key});
  @override
  Widget build(BuildContext context) {
GroupModel c =GroupModel(groupName: "groupName", doctorName: "doctorName", subjectName: "subjectName");
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
        iconTheme:  IconThemeData(color: Colors.black,size:15.sp ) ,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child:InkWell(
              onTap: () {

                Navigator.of(context)
                    .pushReplacementNamed(MatPagee.routeName,);

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
                      child: Text("All Groups",
                      style: GoogleFonts.ubuntu(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      )),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder:  (context, index) =>
                            GroubItem(groubModel: c
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
