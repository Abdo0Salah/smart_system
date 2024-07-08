import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import '../../../../../apiModels/GetFilesDataOfLecturesAttachmentModel.dart';
import '../../../../../cubit/user_cubit.dart';
import '../../../../../cubit/user_state.dart';
import 'package:open_file/open_file.dart';

class LectureAttachmentDetails extends StatefulWidget {
  static const String routeName = 'LectureAttachmentDetails';

  @override
  _LectureAttachmentDetailsState createState() =>
      _LectureAttachmentDetailsState();
}

class _LectureAttachmentDetailsState extends State<LectureAttachmentDetails> {
  final Dio dio = Dio();

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
            if (state is UserLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is  UserFailureState) {
              return Center(
                  child: Text('Failed to load subjects: ${state.errMessage}'));
            }  final FilesData = context.read<UserCubit>().FilesDataR;
            return _buildSubjectList(FilesData);
          },
        ),
      ),
    );
  }

  Widget _buildSubjectList(
      List<GetfilesdataoflecturesattachmentModel> FilesData) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Expanded(
          child: GridView.builder(
            itemCount: FilesData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final FileData = FilesData[index];
              return _buildSubjectItem(FileData, index + 1);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(GetfilesdataoflecturesattachmentModel FileData, int index) {
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
                FileData.fileName ?? '-',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              Expanded(
                child: Text(
                  FileData.description ?? '-',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: Colors.blueGrey,
                  ),
                  textAlign: TextAlign.center,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => _downloadFile(FileData.fileName, FileData.id ?? 0),
                    child: Icon(
                      Icons.download,
                      color: Colors.black,
                      size: 25.sp,
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

  Future<void> _downloadFile(String? fileName, int fileId) async {
    if (fileName == null) return;

    try {
      Directory? downloadsDir;

      if (Platform.isAndroid) {
        downloadsDir = await getExternalStorageDirectory();
        String newPath = "";
        List<String> paths = downloadsDir!.path.split("/");
        for (int i = 1; i < paths.length; i++) {
          String folder = paths[i];
          if (folder != "Android") {
            newPath += "/" + folder;
          } else {
            break;
          }
        }
        newPath = newPath + "/Download";
        downloadsDir = Directory(newPath);
      } else if (Platform.isIOS) {
        downloadsDir = await getApplicationDocumentsDirectory();
      }
      Random random1 = new Random();
      var count1 = random1.nextInt(20);
      String filePath = "${downloadsDir!.path}/${count1}_$fileName";
      Random random = new Random();
      var count = random.nextInt(20);

      while (await File(filePath).exists()) {
        filePath = "${downloadsDir.path}/${count}_$fileName";
        count++;
      }

      final response = await dio.download(
        "http://eirpsystem.runasp.net/api/Files/download/lecture/$fileId",
        filePath,
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('File downloaded successfully!')),
        );
        OpenFile.open(filePath);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to download file.')),
        );
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error occurred: $e')),
      );
    }
  }
}
