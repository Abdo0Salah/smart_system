import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageList extends StatelessWidget {
  static const String routeName = 'MessageList';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message List ",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22.sp,
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xffF0F3F7),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('assets/images/admin/university_logo.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("حاسبات ومعلومات الزقازيق",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                          ),
                          Text("1m ago.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6C6C6C),
                            ),
                          ),
                        ],
                      ),
                      Text("Your student has paied the College Expenses Today.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/admin/Group_Edit.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/images/admin/Group_Delete.png'),
              ],
            ),
          ),
          SizedBox(
            width: 10,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('assets/images/admin/university_logo.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("حاسبات ومعلومات الزقازيق",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text("5d ago.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6C6C6C),
                            ),
                          ),
                        ],
                      ),
                      Text("Your student has paied the College Expenses Today.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/admin/Group_Edit.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/images/admin/Group_Delete.png'),
              ],
            ),
          ),
          SizedBox(
            width: 10,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('assets/images/admin/university_logo.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("حاسبات ومعلومات الزقازيق",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Text("45m ago.",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6C6C6C),
                            ),
                          ),
                        ],
                      ),
                      Text("Your student has paied the College Expenses Today.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/admin/Group_Edit.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/images/admin/Group_Delete.png'),
              ],
            ),
          ),
        ],
    ),
    );
  }
}
