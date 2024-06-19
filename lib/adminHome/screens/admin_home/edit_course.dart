import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'courses.dart';

class EditCourseScreen extends StatefulWidget {
  static const String routeName = 'EditCourseScreen';
  @override
  _EditCourseScreenState createState() => _EditCourseScreenState();
}

class _EditCourseScreenState extends State<EditCourseScreen> {
  final _formKey = GlobalKey<FormState>();
  String _selectedYearLevel = 'third level';
  String _selectedAcademicYear = '2023 _2024';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        backgroundColor: const Color(0xffEFF3F7FF),
        body: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Center(
                                  child: Text(
                                    'Edit Course',
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.black,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(height: 50),
                                Text(
                                  'Upload Picture (option )',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.image),
                                    labelText: 'subject image',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  'Course name /Code',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.view_list_rounded),
                                    labelText: 'Enter the Course name',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  'select the Year Level ',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                DropdownButtonFormField<String>(
                                  value: _selectedYearLevel,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  items: [
                                    'first level',
                                    'second level',
                                    'third level',
                                    'fourth level'
                                  ]
                                      .map((level) => DropdownMenuItem<String>(
                                    value: level,
                                    child: Text(level),
                                  ))
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedYearLevel = value!;
                                    });
                                  },
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  'Academic Year ',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                DropdownButtonFormField<String>(
                                  value: _selectedAcademicYear,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  items: [
                                    '2023 _2024',
                                    '2024 _2025',
                                    '2025 _2026'
                                  ]
                                      .map((year) => DropdownMenuItem<String>(
                                    value: year,
                                    child: Text(year),
                                  ))
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedAcademicYear = value!;
                                    });
                                  },
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          CoursesScreen.routeName,
                                        );
                                      },
                                      child: Text('Cancel',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xff0096FF),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          CoursesScreen.routeName,
                                        );
                                        if (_formKey.currentState!.validate()) {
                                          // Save course logic
                                        }
                                      },
                                      child: Text('Save course',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ],
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
        ),
      ),
    );
  }
}
