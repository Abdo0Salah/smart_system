import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../../cubit/user_cubit.dart';
import '../../../../../../cubit/user_state.dart';
import '../../../../../apiModels/get_all_meetings_model.dart';

class MeetingScreen extends StatefulWidget {
  static const String routeName = 'MeetingScreen';
  @override
  _MeetingScreenState createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().GetAllMeetings();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Meeting Information",
            style: GoogleFonts.fjordOne(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: Colors.black,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffF5F9FE),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetAllMeetingsLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GetAllMeetingsSuccess) {
              return _buildSubjectList(state.meetingR);
            } else if (state is GetAllMeetingsFailure) {
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

  Widget _buildSubjectList(List<GetAllMeetingsModel> meetings) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: meetings.length,
            itemBuilder: (context, index) {
              final meeting = meetings[index];
              return _buildSubjectItem(meeting, index + 1);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubjectItem(GetAllMeetingsModel meeting, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.w),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Subject Name: Android',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 2,
                    width: 400,
                    color: Colors.black,
                  ),
                  Table(
                    border: TableBorder.symmetric(inside: const BorderSide()),
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Title',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              meeting.title ?? '-',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Meeting Start Time',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              DateFormat('yyyy-MM-dd').format(
                                  DateTime.parse(meeting.startDate ?? '-')),
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              'Meeting Link',
                              style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: InkWell(
                              onTap: () {
                                // Handle link tap
                              },
                              child:
                              Text(
                                meeting.url ?? '-',
                                style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 2,
                    width: 400,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

