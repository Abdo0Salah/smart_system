import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_system/admin/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/admin/screens/login_signup/login_screen.dart';


class ResetPasswordScreenAdmin extends StatelessWidget {
  static const String routeName = ' ResetPasswordScreenAdmin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'اعادة ضبط كلمة المرور',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(
                    thickness: 3,
                    color: Color(0xff1B406D),
                    indent: 160,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'fci.zu.edu.eg@21365468098 التابعة ل',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100 , bottom: 40 , left: 20 , right: 20),
              child: TextFormField(
                style: TextStyle(color: Color(0xff746868)),
                decoration: const InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.remove_red_eye,
                  color: Color(0xff1B406D),
                  ),
                  hintText: 'كلمة المرور الجديدة',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 35, bottom: 20, left: 20, right: 20),
              child: TextButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xffbccad9),
                    style: BorderStyle.solid,
                    width: 2.5,
                  ),
                  fixedSize: Size(450, 70),
                  backgroundColor: Color(0xffcbd9f1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreenAdmin.routeName);
                },
                child: const Text(
                  "Save",
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

