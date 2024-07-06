import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../../apiModels/get_section_assignment_model.dart';
import '../../../../../../cache/cache_helper.dart';
import '../../../../../../core/api/end_ponits.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../openAssignmentScreen.dart';

class SectionTap extends StatefulWidget {
  static const String routeName = 'SectionTap';

  @override
  _SectionTapState createState() => _SectionTapState();
}

class _SectionTapState extends State<SectionTap> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetAllSectionAssignments();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetAllSectionAssignmentsLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetAllSectionAssignmentsSuccess) {
              return _buildSubjectList(state.sectionAssignmentR);
            } else if (state is GetAllSectionAssignmentsFailure) {
              return Center(
                  child: Text('Failed to load subjects: ${state.errMessage}'));
            } else {
              return Center(child: Text('Unknown state'));
            }
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<GetAllSectionAssignmentsModel> sectionAssignments) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: sectionAssignments.length,
            itemBuilder: (context, index) {
              final sectionAssignment = sectionAssignments[index];
              return _buildSubjectItem(sectionAssignment, index + 1);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(GetAllSectionAssignmentsModel sectionAssignment, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).r, color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          sectionAssignment.title ?? '-',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20.sp),
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
                        Expanded(
                          child: Text(
                            "Assignment date",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.grey),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: Text(
                            DateFormat('yyyy-MM-dd').format(
                                DateTime.parse(sectionAssignment.createdAt ?? '-')),
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Last Date",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.grey),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: Text(
                            DateFormat('yyyy-MM-dd').format(
                                DateTime.parse(sectionAssignment.deadline ?? '-')),
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16.sp),
                          ),
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
                                    offset: Offset(
                                        2, 4) // changes position of shadow
                                ),
                              ],
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.r)),
                              color: sectionAssignment.isSubmitted ?? false
                                  ? const Color.fromARGB(185, 100, 250, 100)
                                  : const Color.fromARGB(255, 246, 174, 174)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0).w,
                            child: Text(
                              sectionAssignment.isSubmitted ?? false
                                  ? " Submitted"
                                  : " not Submitted",
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
                      visible: sectionAssignment.isSubmitted ?? false ? false : true,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            CacheHelper().saveData(key: ApiKey.assignmentIdSaved, value:  sectionAssignment.id);

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
          ),
        ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
