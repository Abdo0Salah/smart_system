import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../../apiModels/get_all_assignments_model.dart';
import '../../../../../../cache/cache_helper.dart';
import '../../../../../../core/api/end_ponits.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../openAssignmentScreen.dart';

class AllTap extends StatefulWidget {
  static const String routeName = 'AllTap';

  @override
  _AllTapState createState() => _AllTapState();
}

class _AllTapState extends State<AllTap> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetAllAssignments();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is UserLoadingState) {
              return Center(child: CircularProgressIndicator());
            }else if (state is UserFailureState) {
              return Center(
                  child: Text('Failed to load subjects: ${state.errMessage}'));
            }
            final allAssignment = context.read<UserCubit>().allAssignmentR;
            return _buildSubjectList(allAssignment);
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<GetAllAssignmentsModel> assignments) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: assignments.length,
            itemBuilder: (context, index) {
              final assignment = assignments[index];
              return _buildSubjectItem(assignment, index + 1);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(GetAllAssignmentsModel assignment, int index) {
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
                          assignment.title ?? '-',
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
                                DateTime.parse(assignment.createdAt ?? '-')),
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
                                DateTime.parse(assignment.deadline ?? '-')),
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
                              color: assignment.isSubmitted ?? false
                                  ? const Color.fromARGB(185, 100, 250, 100)
                                  : const Color.fromARGB(255, 246, 174, 174)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0).w,
                            child: Text(
                              assignment.isSubmitted ?? false
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
                      height: 25.h,
                    ),
                    Visibility(
                      visible: assignment.isSubmitted ?? false ? false : true,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            CacheHelper().saveData(key: ApiKey.assignmentIdSaved, value:  assignment.id);

                            Navigator.pushNamed(
                              context,
                              OpenAssignmentScreen.routeName,
                            );
                          },
                          style: const ButtonStyle(
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
