import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentTimeTableScreen extends StatefulWidget {
  static const String routeName = 'StudentTimeTableScreen';
  const StudentTimeTableScreen({super.key});

  @override
  State<StudentTimeTableScreen> createState() => _StudentTimeTableScreenState();
}

class _StudentTimeTableScreenState extends State<StudentTimeTableScreen> {
  String _dropDownValue1 = 'Select Academic year';
  String _dropDownValue2 = 'Select Semester';
  String _dropDownValue3 = 'Select the student Department';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
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
                ' Student Time Table',
                style: GoogleFonts.irishGrover(
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
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                  padding: const EdgeInsets.only(left: 5, bottom: 2),
                  hint: _dropDownValue3 == null
                      ? Text('')
                      : Text(
                    _dropDownValue3,
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
                  items: ['IT', 'CS','DS','IS'].map(
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
                        _dropDownValue3 = val!;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
