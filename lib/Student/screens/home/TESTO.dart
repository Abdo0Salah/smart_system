import 'package:smart_system/Student/screens/home/materials-tap/mat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../../../apiModels/get_all_replies_model.dart';
import '../../../cache/cache_helper.dart';
import '../../../core/api/end_ponits.dart';

class Testooo extends StatefulWidget {
  static const String routeName = 'Testooo';
  final String genderValue = CacheHelper().getData(key: ApiKey.userGenderSaved) ;

  @override
  _TestoooState createState() => _TestoooState();
}

class _TestoooState extends State<Testooo> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetAllReplies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetAllRepliesLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetAllRepliesSuccess) {
              return _buildSubjectList(state.replyR);
            } else if (state is GetAllRepliesFailure) {
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

  Widget _buildSubjectList(List<GetAllRepliesModel> replies) {
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
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp),
                    ),
                    Text(
                      "${CacheHelper().getData(key: ApiKey.userEmailSaved)}",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10.sp),
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
            itemCount: replies.length,
            itemBuilder: (context, index) {
              final reply = replies[index];
              return _buildSubjectItem(reply, index + 1);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(GetAllRepliesModel reply, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15.w),
          child: Card(
            shadowColor: Colors.grey,
            elevation: 20,
            surfaceTintColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    reply.content??'-',
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
        ),
      ],
    );
  }
}

