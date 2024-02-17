import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_system/screens/login_signup/forget_pass.dart';
import 'package:smart_system/screens/login_signup/signup_screen.dart';
import 'package:smart_system/screens/ui_splashes/splash1/splash1_screen.dart';

import '../home/home.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(splash1.routeName);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xff1B406D),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 40, left: 40),
            child: Image.asset('assets/images/Login/login_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
            child: Container(
              width: 390,
              height: 320,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 10),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(SignUpScreen.routeName);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: Color(0xff1B406D),
                    endIndent: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1B406D),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Username@fci.zu.edu.eg',
                        prefixIcon:
                            const Icon(Icons.mail, color: Color(0xff1B406D)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1B406D),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter Your password',
                        prefixIcon: const Icon(Icons.password,
                            color: Color(0xff1B406D)),
                        suffixIcon: const Icon(Icons.remove_red_eye,
                            color: Color(0xff1B406D)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(ForgetPassword.routeName);
                      },
                      child: Text(
                        'Forget Password!',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
            child: TextButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xff7aa1c9),
                  style: BorderStyle.solid,
                  width: 2,
                ),
                fixedSize: Size(390, 70),
                backgroundColor: Color(0xff8bb8e3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
              child: const Text(
                "Log In",
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
    );
  }
}
