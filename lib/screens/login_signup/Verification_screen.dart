import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/screens/login_signup/forget_pass.dart';
import 'package:smart_system/screens/login_signup/reset_password_screen.dart';

class VerificationScreen extends StatelessWidget {
  static const String routeName = 'Verfy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification",
          style: TextStyle(
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
      backgroundColor: Color(0xffF0F3F7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Center(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Text(
                        "Enter Verification Code",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xff444444),
                              width: 1,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1,
                            ),
                          ),
                          onPressed: () {},
                          child:
                          const Text(
                            "3",
                            style: TextStyle(
                              color: Color(0xff444444),
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xff444444),
                              width: 1,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1,
                            ),
                          ),
                          onPressed: () {},
                          child:
                          const Text(
                            "7",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff444444),
                            ),
                          ),
                        ),
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xff444444),
                              width: 1,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1,
                            ),
                          ),
                          onPressed: () {},
                          child:
                          const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff444444),
                            ),
                          ),
                        ),
                        TextButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xff444444),
                              width: 1,
                            ),
                            shape: CircleBorder(
                              eccentricity: .1,
                            ),
                          ),
                          onPressed: () {},
                          child:
                          const Text(
                            "9",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff444444),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "If you didn’t receive a code, ",
                            style: TextStyle(
                              color: Color(0xffABABAB),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                        Text(
                            "Resend",
                            style: TextStyle(
                              color: Color(0xffE85C4D),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xffbccad9),
                          style: BorderStyle.solid,
                          width: 2.5,
                        ),
                        fixedSize: Size(450, 70),
                        backgroundColor: Color(0xffcbd9f1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
                      },
                      child:
                      const Text(
                        "Send",
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
          ],
        ),
      ),
    );
  }
}
