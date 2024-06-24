import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'meeting_information.dart';

class CreateMeetingScreen extends StatefulWidget {
  static const String routeName = 'CreateMeetingScreen';
  const CreateMeetingScreen({super.key});

  @override
  State<CreateMeetingScreen> createState() => _CreateMeetingScreenState();
}

class _CreateMeetingScreenState extends State<CreateMeetingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Google Meet /Zoom",
            style: GoogleFonts.fjordOne(
              fontWeight: FontWeight.w400,
              fontSize: 22.sp,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xffF0F3F7),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 40, left: 20, right: 20),
                child: TextFormField(
                  style: const TextStyle(color: Color(0xff746868)),
                  decoration: const InputDecoration(
                    hintTextDirection: TextDirection.ltr,
                    hintText: 'Google Meet URL' ,
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color(0xff938484),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 40, left: 20, right: 20),
                child: TextFormField(
                  style: const TextStyle(color: Color(0xff746868)),
                  decoration: const InputDecoration(
                      hintTextDirection: TextDirection.ltr,
                      hintText: 'Google Meet Title' ,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Color(0xff938484),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20),
                child: TextFormField(
                  style: const TextStyle(color: Color(0xff746868)),
                  decoration: const InputDecoration(
                      hintTextDirection: TextDirection.ltr,
                      hintText: 'Google Meet Time' ,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Color(0xff938484),
                      ),
                    suffixIcon: Icon(Icons.calendar_month_outlined),
                    suffixIconColor: Colors.black
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15 , top:200, bottom: 15 , right: 15),
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff82A0D2),
                      style: BorderStyle.solid,
                      width: 2.5,
                    ),
                    fixedSize: const Size(450, 70),
                    backgroundColor: const Color(0xff8EAFD9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(
                      context,
                      MeetingInformationScreen.routeName,
                    );
                  },
                  child: Text(
                    "Create Google Meet /Zoom",
                    style: GoogleFonts.fjordOne(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
