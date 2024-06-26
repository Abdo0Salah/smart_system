import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentResultScreen extends StatefulWidget {
  static const String routeName = 'StudentResultScreen';

  const StudentResultScreen({super.key});

  @override
  State<StudentResultScreen> createState() => _StudentResultScreenState();
}

class _StudentResultScreenState extends State<StudentResultScreen> {
  String _dropDownValue1 = 'Select Academic year';
  String _dropDownValue2 = 'Select Semester/Session';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300.w,
                        height: 2.h,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        ' ACADEMIC RESULTS',
                        style: GoogleFonts.gabriela(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300.w,
                        height: 2.h,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
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
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          underline: Container(),
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
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
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
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          underline: Container(),
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
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w,top: 8.h,right: 8.w),
                  child: Container(
                    width: double.infinity.w,
                    height: 60.h,
                    decoration: const BoxDecoration(
                        color: Color(0xffE8EAEC),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(1, 0),
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subject name",
                            style: GoogleFonts.gabriela(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "midTerm",
                            style: GoogleFonts.gabriela(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "Oral",
                            style: GoogleFonts.gabriela(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "Practical",
                            style: GoogleFonts.gabriela(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "Total",
                            style: GoogleFonts.gabriela(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w,bottom: 8.h,right: 8.w),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color:  Color(0xffE8EAEC),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color:  Color(0xffE8EAEC),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Color(0xffE8EAEC),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              "10",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
