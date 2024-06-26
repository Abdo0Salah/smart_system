import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../attendance_screen.dart';

class AcceptedQrScreen extends StatelessWidget {
  const AcceptedQrScreen({super.key});
  static const String routeName = 'AcceptedQrScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Selected Topic'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Column(
            children: [
              Text(
                "ACCEPTED",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Congraturation ! You are Count",
                style: TextStyle(
                    // color: Colors.blue,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          Expanded(
            //flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/accepted.png',
                //  fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20).w,
            child: Container(
              //  width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                        context,
                        AttendanceScreen.routeName,
                      );
                    },
                    child: Text('Finish'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
