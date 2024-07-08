import 'package:smart_system/Student/screens/home/materials-tap/mat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../../../apiModels/getAllStudentAttendanceModel.dart';
import '../../../apiModels/get_all_replies_model.dart';
import '../../../cache/cache_helper.dart';
import '../../../core/api/end_ponits.dart';

class Tez extends StatefulWidget {
  static const String routeName = 'Tez';
  final String genderValue = CacheHelper().getData(key: ApiKey.userGenderSaved);

  @override
  _TezState createState() => _TezState();
}

class _TezState extends State<Tez> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getAllStudentAttendance();
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
            } else if (state is UserFailureState) {
              return Center(
                  child: Text('Failed to load subjects: ${state.errMessage}'));
            }  final Attendance = context.read<UserCubit>().AttendanceR;
            return _buildSubjectList(Attendance);
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<getAllStudentAttendanceModel> attendances) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 15.w),
              child: CircleAvatar(
                radius: 30.r,
                backgroundColor: const Color(0xffC4C4C4),
                child: ClipOval(
                  child: Image.asset(
                    widget.genderValue == "male"
                        ? "assets/images/avatar1.png"
                        : "assets/images/avatar3.png",
                    fit: BoxFit.fitWidth,
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 10.h),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${CacheHelper().getData(key: ApiKey.userNameSaved)}",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                    Text(
                      "${CacheHelper().getData(key: ApiKey.userEmailSaved)}",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                  MatPagee.routeName,
                );
              },
              child: const Icon(
                Icons.close,
                size: 35,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: attendances.length,
            itemBuilder: (context, index) {
              final reply = attendances[index];
              return _buildSubjectItem(reply, index + 1);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4,left: 4,right: 4).w,
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter task name';
              } else
                return null;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFAAC8E4),
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.asset(
                        widget.genderValue == "male"
                            ? "assets/images/avatar1.png"
                            : "assets/images/avatar3.png",
                        fit: BoxFit.fitWidth,
                        //  width: 180,
                        // height: 180,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  )
                ],
              ),
              suffixIcon: Icon(Icons.send, color: Colors.black),
              enabled: true,
              label: Text("Add Comment",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10).r,
                      topLeft: Radius.circular(10).r,
                      bottomLeft:Radius.circular(5).r,
                      bottomRight: Radius.circular(5).r),
                  borderSide: BorderSide(color:Color(0xFFAAC8E4),)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10).r,
                      topLeft: Radius.circular(10).r,
                      bottomLeft:Radius.circular(5).r,
                      bottomRight: Radius.circular(5).r
                  ),
                  borderSide: BorderSide(color:Color(0xFFAAC8E4),)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(getAllStudentAttendanceModel attendance, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15.w),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  attendance.date ?? '-',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
