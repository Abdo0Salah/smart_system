import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/admin/screens/admin_home/Staff%20Tap/staff_member.dart';

import 'doctor_assignment_screen.dart';

class AddAssignment extends StatelessWidget {
  static const String routeName = 'AddAssignment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Assignment",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Container(
                width: 400,
                height: 550,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40 , left: 25 ,bottom: 8),
                      child: Text('Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20 , bottom: 25, right: 20),
                      child: Container(
                        width: 350,
                        height: 45,
                        child: TextFormField(
                          // controller: ,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffA9A9A9),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25 ,bottom: 8),
                      child: Text('Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20 , bottom: 25, right: 20),
                      child: Container(
                        width: 350,
                        height: 120,
                        child: TextFormField(
                          // controller: ,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 100.0, horizontal: 15.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffA9A9A9),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25 ,bottom: 8),
                      child: Text(' Upload Assignment File',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20 , bottom: 25, right: 20),
                      child: Container(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          // controller: ,
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffA9A9A9),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: Icon(Icons.cloud_upload,
                              color: Colors.black,
                            ),
                            hintText: 'Attachment File',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25 ,bottom: 8),
                      child: Text(' Submitted Date',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20 , bottom: 25, right: 20),
                      child: Container(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          // controller: ,
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffA9A9A9),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            suffixIcon: Icon(Icons.calendar_today_rounded,
                              color: Colors.black,
                            ),

                        ),
                      ),
                    ),),
    ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15 , top: 50, bottom: 15 , right: 15),
              child: TextButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff7462FF),
                    style: BorderStyle.solid),
                  fixedSize: Size(300, 50),
                  backgroundColor: Color(0xff7462FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: (){
                    Navigator.of(context).pop(DoctorAssignmentScreen.routeName);
                },
                child: const Text(
                  "Upload Assignment",
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
    );
  }
}
