import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_system/models/home_material_model.dart';
import 'package:smart_system/widget/home_material_widget.dart';

import '../../subject_group.dart';
import 'home.dart';

class MaterialsScreen extends StatefulWidget {
  static const String routeName = 'MaterialsScreen';
  List<HomeMaterialModel> homeMaterialModel = [
    HomeMaterialModel("Selected Topic", "assets/images/Selected Topic.png", 0),
    HomeMaterialModel("Network", "assets/images/Network.png", 1),
    HomeMaterialModel("Robotics", "assets/images/Robotics.png", 2),
    HomeMaterialModel(
        "image processing", "assets/images/image processing.png", 3),
    HomeMaterialModel("Selected Topic", "assets/images/Selected Topic.png", 0),
    HomeMaterialModel("Network", "assets/images/Network.png", 1),
    HomeMaterialModel("Robotics", "assets/images/Robotics.png", 2),
    HomeMaterialModel(
        "image processing", "assets/images/image processing.png", 3),
  ];

  @override
  State<MaterialsScreen> createState() => _MaterialsScreenState();
}

class _MaterialsScreenState extends State<MaterialsScreen> {
  String _dropDownValue1 = 'Select Academic year';
  String _dropDownValue2 = 'Select Semester';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Container( color: Colors.blue,
        //     child: const Column()),
        backgroundColor: const Color(0xffF5F9FE),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 15.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffC4C4C4),
                        radius: 30.r,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Student name",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                            Text(
                              "201524587545@fci.zu.edu.eg",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 8.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HomeScreen.routeName,
                        );
                      },
                      child: const Icon(
                        Icons.close,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)),
                        child: DropdownButton(
                          padding: const EdgeInsets.only(left: 5, bottom: 2),
                          hint: _dropDownValue1 == null
                              ? Text('')
                              : Text(
                                  _dropDownValue1,
                                  style: GoogleFonts.inter(
                                      color: const Color(0xff696969),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                          // dropdownColor: const Color(0xffD9D9D9) ,
                          borderRadius: BorderRadius.circular(20),
                          isExpanded: true,
                          iconSize: 25.0.sp,
                          style: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                          items: ['One', 'Two', 'Three', 'Four'].map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                              () {
                                _dropDownValue1 = val!;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)),
                        child: DropdownButton(
                          padding: const EdgeInsets.only(left: 5, bottom: 2),
                          hint: _dropDownValue2 == null
                              ? Text('')
                              : Text(
                                  _dropDownValue2,
                                  style: GoogleFonts.inter(
                                      color: const Color(0xff696969),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                          // dropdownColor: const Color(0xffD9D9D9) ,
                          borderRadius: BorderRadius.circular(20),
                          isExpanded: true,
                          iconSize: 25.0.sp,
                          style: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                          items: ['One', 'Two'].map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                              () {
                                _dropDownValue2 = val!;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 30.h, bottom: 10.h),
                  child: Text(
                    'Subjects of the Year',
                    style: GoogleFonts.fjordOne(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w, bottom: 20.h),
                  child: Container(
                    height: 5,
                    width: 235,
                    color: const Color(0xff2C4A7A),
                  ),
                ),
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: widget.homeMaterialModel
                        .map((home) => InkWell(
                              child: HomeMaterialWidget(home),
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  SubjectGroups.routeName,
                                );
                              },
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
