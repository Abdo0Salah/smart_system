
import 'package:flutter/material.dart';
import 'package:smart_system/admin/screens/admin_home/profile%20Tap/profile_screen.dart';


class Profile2Admin extends StatelessWidget {
  static const String routeName = 'profile2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Color(0xff1B406D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/admin/profile1.png',
                    width: 103,
                    height: 99,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      "Change Picture",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: 'Admin Name',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('Email I’d',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: '20682546255844@fci.zu.edu.eg',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('Department',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: 'IT',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('Gender',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: 'Male',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('Phone Number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: '+14987889999',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('Date Of Birth',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: '04 -Feb -2000',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 18),
              child: Text('Current password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: '**********',
                    ),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Text('new password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: 365,
                  height: 40,
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
                      hintText: '**********',
                    ),

                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff171F1D),
                      style: BorderStyle.solid,
                      width: 2.5,
                    ),
                    fixedSize: Size(283, 40),
                    backgroundColor: Color(0xff171F1D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed(ProfileAdmin.routeName);
                  },
                  child:
                  const Text(
                    "Update",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
