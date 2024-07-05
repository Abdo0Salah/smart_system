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
            if (state is GetLecturesAttachmentLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetLecturesAttachmentSuccess) {
              return _buildSubjectList(state.attachmenR);
            } else if (state is GetLecturesAttachmentFailure) {
              context.read<UserCubit>().GetLecturesAttachment();
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

  Widget _buildSubjectList(List<GetLecturesAttachmentModel> attachments) {
    return Column(
      children: [
        Expanded(
            child:GridView.builder(
              itemCount: attachments.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final attachment = attachments[index];
                return _buildSubjectItem(attachment, index + 1);
              },
            )

        ),
      ],
    );
  }

  Widget _buildSubjectItem(GetLecturesAttachmentModel attachment, int index) {
    return InkWell(
      onTap: () {
        CacheHelper().saveData(key: ApiKey.lectureIdSaved, value:  attachment.id);
        Navigator.pushNamed(
          context,
          LectureAttavhmentDetails.routeName,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20).r,
                  color: Color(0xFFAAC8E4)),
              child: Padding(
                padding: const EdgeInsets.all(8.0).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      attachment.title ?? '-',
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 21.sp),
                    ),
                    Text(
                      "Topic of the Lecture",
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.file_copy_outlined, size: 15),
                        Text(
                          "01 files",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.ondemand_video_sharp, size: 15),
                        Text(
                          "01 video",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 15.r,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Uploded by",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 11.sp),
                            ),
                            Text(
                              attachment.uploadedBy ?? 'Doctor',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 11.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}