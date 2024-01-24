import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_system/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/screens/login_signup/login_screen.dart';


class ForgetPassword extends StatelessWidget {
  static const String routeName = 'ForgetPass';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  child: Icon(Icons.arrow_back,
                    color: Color(0xff1B406D),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child:
                  Image.asset('assets/images/Login/Reset password-bro 1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0 , bottom: 12 , left: 8 , right: 8),
              child: Text('forget password',
              style: TextStyle(
                fontSize: 18,
              ),
                ),
            ),
            Divider(
              thickness: 2.8,
              color: Color(0xff1B406D),
              endIndent: 175,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20 , bottom: 20 , left: 10 , right: 10),
              child: Text('Provide your email for which  you \n want to reset your password !',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8 , top: 12),
              child: Text('phone number',
              style: TextStyle(
                color: Color(0xff4084C3),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8 , bottom: 8 ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1B406D),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter phone number',
                  prefixIcon: const Icon(Icons.phone_in_talk, color: Color(0xff1B406D)),
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: TextButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xff7aa1c9),
                style: BorderStyle.solid,
                width: 2.5,
              ),
              fixedSize: Size(450, 70),
              backgroundColor: Color(0xff8bb8e3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            onPressed: (){
              Navigator.of(context).pushNamed(VerificationScreen.routeName);
            },
            child:
            const Text(
              "Next",
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
