import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback_ form.dart';


class FeedbackScreen extends StatefulWidget {
  static const String routeName = 'fed';

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  var _myColorOne = Colors.grey;

  var _myColorTwo = Colors.grey;

  var _myColorThree = Colors.grey;

  var _myColorFour = Colors.grey;

  var _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff7DD1FA), Color(0xffFFFDAF)],
              ),
            ),
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "Feedback List",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xff555555),
                        fontWeight: FontWeight.w700,
                        fontSize: 30.sp),
                     textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(flex:1,
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xffC4C4C4),
                                    radius: 20.r,
                                  ),
                                ),
                                Expanded(flex: 3,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Student name",
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                          Text(
                                            "201524587545@fci.zu.edu.eg",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Expanded(flex: 2,
                                  child: Text(
                                    "22.03.2021",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Thank you dr Ehab for your efforts with us ,i hope that you are fine.",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.star),
                                  iconSize: 35,
                                  onPressed: () => setState(() {
                                    _myColorOne = Colors.orange;
                                    _myColorTwo = Colors.grey;
                                    _myColorThree = Colors.grey;
                                    _myColorFour = Colors.grey;
                                    _myColorFive = Colors.grey;
                                  }),
                                  color: _myColorOne,
                                ),
                                IconButton(
                                  icon: Icon(Icons.star),
                                  iconSize: 35,
                                  onPressed: () => setState(() {
                                    _myColorOne = Colors.orange;
                                    _myColorTwo = Colors.orange;
                                    _myColorThree = Colors.grey;
                                    _myColorFour = Colors.grey;
                                    _myColorFive = Colors.grey;
                                  }),
                                  color: _myColorTwo,
                                ),
                                IconButton(
                                  icon: Icon(Icons.star),
                                  iconSize: 35,
                                  onPressed: () => setState(() {
                                    _myColorOne = Colors.orange;
                                    _myColorTwo = Colors.orange;
                                    _myColorThree = Colors.orange;
                                    _myColorFour = Colors.grey;
                                    _myColorFive = Colors.grey;
                                  }),
                                  color: _myColorThree,
                                ),
                                IconButton(
                                  icon: Icon(Icons.star),
                                  iconSize: 35,
                                  onPressed: () => setState(() {
                                    _myColorOne = Colors.orange;
                                    _myColorTwo = Colors.orange;
                                    _myColorThree = Colors.orange;
                                    _myColorFour = Colors.orange;
                                    _myColorFive = Colors.grey;
                                  }),
                                  color: _myColorFour,
                                ),
                                IconButton(
                                  icon: Icon(Icons.star),
                                  iconSize: 35,
                                  onPressed: () => setState(() {
                                    _myColorOne = Colors.orange;
                                    _myColorTwo = Colors.orange;
                                    _myColorThree = Colors.orange;
                                    _myColorFour = Colors.orange;
                                    _myColorFive = Colors.orange;
                                  }),
                                  color: _myColorFive,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Color(0xffD3E7FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Edit",
                                  style: GoogleFonts.fjordOne(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Color(0xffD3E7FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Delete",
                                  style: GoogleFonts.fjordOne(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                FeedbackForm.routeName,
              );
            },
            elevation: 10 ,
            backgroundColor: Colors.black,
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Icon(Icons.add)),
          ),
      ),
    );
  }
}
