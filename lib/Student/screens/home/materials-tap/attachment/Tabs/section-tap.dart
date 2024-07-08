import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../apiModels/GetSectionsAttachmentModel.dart';
import '../../../../../../cache/cache_helper.dart';
import '../../../../../../core/api/end_ponits.dart';
import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../section_atta-details.dart';

class SectionsAttachmentTap extends StatefulWidget {
  @override
  _SectionsAttachmentTapState createState() => _SectionsAttachmentTapState();
}

class _SectionsAttachmentTapState extends State<SectionsAttachmentTap> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetSectionsAttachment();
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
            }  final attachmenSection = context.read<UserCubit>().attachmenSectionR;
            return _buildSubjectList(attachmenSection);
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<GetSectionsAttachmentModel> attachments) {
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

  Widget _buildSubjectItem(GetSectionsAttachmentModel attachment, int index) {
    return InkWell(
      onTap: () {
        CacheHelper().saveData(key: ApiKey.sectionIdSaved, value: attachment.id);
        Navigator.pushNamed(
          context,
          SectionAttavhmentDetails.routeName,
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
            padding: EdgeInsets.all(15.w),
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
                  height: 25.h,
                ),
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: CircleAvatar(
                        maxRadius: 15.r,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uploaded by",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 11.sp),
                            // overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            attachment.uploadedBy ?? 'Doctor',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 11.sp),
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
