import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import 'course_name_qr.dart';
import 'date_calender.dart';

class QrScannerScreen extends StatefulWidget {
  static const String routeName = 'QrScannerScreen';
  const QrScannerScreen({super.key});

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  String _dropDownValue1 = 'Select Course name';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "QR Scanner",
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 350.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton(
                      padding: const EdgeInsets.only(left: 5, bottom: 2),
                      hint: _dropDownValue1 == null
                          ? Text('')
                          : Text(
                              _dropDownValue1,
                              style: GoogleFonts.inter(
                                  color: const Color(0xff696969),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                      underline: Container(),
                      borderRadius: BorderRadius.circular(20),
                      isExpanded: true,
                      iconSize: 25.0.sp,
                      style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                      items:
                          ['Selected Topic', 'Cloud', 'Wireless', 'Database'].map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        setState(
                          () {
                            _dropDownValue1 = val!;
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Container(
                        height: 200.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                              offset: Offset(4.0, 4.0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Image.asset(
                                  'assets/images/qrIcon.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 150.w,
                                  color: const Color(0xffD9D9D9),
                                  child: Center(
                                      child: Text(
                                    '12458796',
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    color: Colors.transparent,
                    child: DatePickerExample(),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 15.w , top: 70.h, bottom: 15.h , right: 15.w),
                    child: TextButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xff82A0D2),
                          style: BorderStyle.solid,
                          width: 2,
                        ),
                        fixedSize: Size(380, 70),
                        backgroundColor: Color(0xff8EAFD9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed(CourseNameQrScreen.routeName);
                      },
                      child: const Text(
                        "Generate",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
