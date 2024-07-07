import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../feedback_screen.dart';

class SectionTap extends StatefulWidget {
  const SectionTap({super.key});

  @override
  State<SectionTap> createState() => _SectionTapState();
}

class _SectionTapState extends State<SectionTap> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  "Share your experience in scaling.",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Row(
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
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Add your comments...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Suggest anything we can improve..',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Attach File',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  prefixIcon: Icon(Icons.attach_file),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          FeedbackScreen.routeName,
                        );
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.white)),
                      child: const Text(
                        "  Cancel   ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          FeedbackScreen.routeName,
                        );
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                      child: const Text(
                        "  Send   ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
