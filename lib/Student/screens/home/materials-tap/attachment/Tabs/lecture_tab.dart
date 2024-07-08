import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../apiModels/get_lectures_attachment.dart';
import '../../../../../../cache/cache_helper.dart';
import '../../../../../../core/api/end_ponits.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../lecture_atta-details.dart';

class LectureAttachmentTap extends StatefulWidget {
  @override
  _LectureAttachmentTapState createState() => _LectureAttachmentTapState();
}

class _LectureAttachmentTapState extends State<LectureAttachmentTap> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetLecturesAttachment();
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
            }  else if (state is UserFailureState) {
              context.read<UserCubit>().GetLecturesAttachment();
              return Center(
                  child: Text('Failed to load subjects: ${state.errMessage}'));
            }
            final attachmen = context.read<UserCubit>().attachmenR;
            return _buildSubjectList(attachmen);
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<GetLecturesAttachmentModel> attachments) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: GridView.builder(
        itemCount: attachments.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final attachment = attachments[index];
          return _buildSubjectItem(attachment, index + 1);
        },
      ),
    );
  }

  Widget _buildSubjectItem(GetLecturesAttachmentModel attachment, int index) {
    return InkWell(
      onTap: () {
        CacheHelper().saveData(key: ApiKey.lectureIdSaved, value: attachment.id);
        Navigator.pushNamed(
          context,
          LectureAttachmentDetails.routeName,
        );
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: const Color(0xFFAAC8E4),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attachment.title ?? '-',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
                  // overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Topic of the Lecture",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
                  // overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: CircleAvatar(
                        maxRadius: 15.r,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uploaded by",
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
                            // overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            attachment.uploadedBy ?? 'Doctor',
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
