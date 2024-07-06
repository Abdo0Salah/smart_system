import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../apiModels/GetFilesDataOfLecturesAttachmentModel.dart';
import '../../../../../cubit/user_cubit.dart';
import '../../../../../cubit/user_state.dart';

class LectureAttavhmentDetails extends StatefulWidget {
  static const String routeName = 'LectureAttavhmentDetails';

  @override
  _LectureAttavhmentDetailsState createState() => _LectureAttavhmentDetailsState();
}

class _LectureAttavhmentDetailsState extends State<LectureAttavhmentDetails> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetFilesDataOfLecturesAttachment();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Network"),
          centerTitle: false,
        ),
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetFilesDataOfLecturesAttachmentLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetFilesDataOfLecturesAttachmentSuccess) {
              return _buildSubjectList(state.FilesDataR);
            } else if (state is GetFilesDataOfLecturesAttachmentFailure) {
              return Center(child: Text('Failed to load subjects: ${state.errMessage}'));
            } else {
              return Center(child: Text('Unknown state'));
            }
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(List<GetfilesdataoflecturesattachmentModel> FilesData) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: GridView.builder(
        itemCount: FilesData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final fileData = FilesData[index];
          return _buildSubjectItem(fileData);
        },
      ),
    );
  }

  Widget _buildSubjectItem(GetfilesdataoflecturesattachmentModel fileData) {
    return Padding(
      padding: EdgeInsets.all(8.0).w,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: const Color(0xFFAAC8E4),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0).w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image.asset('assets/images/doctor/pdf.png'),
              ),
              SizedBox(height: 8.h),
              Text(
                fileData.fileName ?? '-',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              Text(
                fileData.description ?? '-',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      // Handle file download
                    },
                    child: Icon(
                      Icons.download,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
