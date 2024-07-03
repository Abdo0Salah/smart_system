import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../apiModels/subjectRegisteration_model.dart';
import '../../../../cubit/user_cubit.dart';
import '../../../../cubit/user_state.dart';
import '../home.dart';

class SubjectRegistrationScreen extends StatefulWidget {
  static const String routeName = 'SubjectRegistrationScreen';

  @override
  _SubjectRegistrationScreenState createState() => _SubjectRegistrationScreenState();
}

class _SubjectRegistrationScreenState extends State<SubjectRegistrationScreen> {
  List<int> selectedCourses = [];

  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().SubjectRegisteration();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is SubjectRegisterationLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is SubjectRegisterationSuccess) {
              return _buildSubjectList(state.subjectR);
            } else if (state is SubjectRegisterationFailure) {
              return Center(child: Text('Failed to load subjects: ${state.errMessage}'));
            } else if (state is CourseRegistrationLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is CourseRegistrationFailure) {
              return Center(child: Text('Failed to register courses: ${state.errMessage}'));
            } else if (state is CourseRegistrationSuccess) {
              return Center(child: Text(state.registerCoursesModel.message));
            } else {
              return Center(child: Text('Unknown state'));
            }
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<SubjectRegisterationModel> subjects) {
    return Column(
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
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
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
          height: 20.h,
        ),
        Text(
          "Subjects Registration By Student",
          style: GoogleFonts.gabriela(
              fontWeight: FontWeight.w400, fontSize: 18.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Max hours for Registration           18",
          style: GoogleFonts.gabriela(
              color: const Color(0xff006600),
              fontWeight: FontWeight.w400,
              fontSize: 16.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8, left: 8).w,
            child: Container(
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
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
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
                          offset: Offset(0, 1),
                          blurRadius: 3,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "s.No",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Subject name",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "subject code",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "subject credit",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Preference",
                              style: GoogleFonts.gabriela(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: subjects.length,
                      itemBuilder: (context, index) {
                        final subject = subjects[index];
                        return _buildSubjectItem(subject, index + 1);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.w),
          child: Center(
            child: TextButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xffbccad9),
                  style: BorderStyle.solid,
                  width: 2.5,
                ),
                fixedSize: Size(200, 50),
                backgroundColor: const Color(0xffcbd9f1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              onPressed: () {
                context.read<UserCubit>().registerCourses(selectedCourses);
              },
              child: const Text(
                "Save",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(SubjectRegisterationModel subject, int index) {
    return Column(
      children: [
        Container(
          width: double.infinity.w,
          height: 30.h,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 10.w,),
              Expanded(flex: 1,
                child: Text(
                  '$index',
                  style: GoogleFonts.gabriela(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                ),
              ),
              Expanded(flex: 4,
                child: Text(
                  subject.name ?? '-',
                  style: GoogleFonts.gabriela(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                ),
              ),
              SizedBox(width: 10.w,),
              Expanded(flex: 5,
                child: Text(
                  subject.code ?? '-',
                  style: GoogleFonts.gabriela(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                ),
              ),
              Expanded(flex: 4,
                child: Text(
                  '${subject.hours ?? '-'}',
                  style: GoogleFonts.gabriela(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                ),
              ),
              Expanded(flex: 1,
                child: Checkbox(
                  value: selectedCourses.contains(index ),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        selectedCourses.add(index );
                      } else {
                        selectedCourses.remove(index );
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h,)
      ],
    );
  }
}
