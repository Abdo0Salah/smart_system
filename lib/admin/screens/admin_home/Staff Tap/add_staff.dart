import 'package:flutter/material.dart';
import 'package:smart_system/admin/screens/admin_home/Staff%20Tap/staff_member.dart';

class AddStaff extends StatelessWidget {
  static const String routeName = 'AddStaff';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
              child: Container(
                width: 400,
                height: 580,
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70, bottom: 70),
                        child: Text(
                          'Add Staff',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25 ,bottom: 8),
                      child: Text('Name',
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
                            prefixIcon: Icon(Icons.person_pin,
                            color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25 ,bottom: 8),
                      child: Text('Email Address',
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
                            prefixIcon: Icon(Icons.email,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25 ,bottom: 8),
                      child: Text(' Enter the Password',
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
                          obscureText: true,
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
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          TextButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xffFFFFFF),
                                style: BorderStyle.solid,
                                width: 2.5,
                              ),
                              fixedSize: Size(150, 45),
                              backgroundColor: Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(
                                context,
                                StaffMember.routeName,
                              );
                            },
                            child:
                            const Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xff0096FF),
                                style: BorderStyle.solid,
                                width: 2.5,
                              ),
                              fixedSize: Size(150, 45),
                              backgroundColor: Color(0xff0096FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(
                                context,
                                StaffMember.routeName,
                              );
                            },
                            child:
                            const Text(
                              "Add",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
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
          ],
        ),
      ),
    );
  }
}
