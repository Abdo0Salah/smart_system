import 'package:flutter/material.dart';
import 'package:smart_system/screens/login_signup/login_screen.dart';
import 'package:smart_system/screens/login_signup/signup_screen.dart';


class TabBar_ extends StatelessWidget {
  static const String routeName = 'TapBar';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child : Scaffold(
        backgroundColor: Color(0xffF0F3F7),
        body: Column(
          children: [
            Image.asset('assets/images/Login/login_logo.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 390,
                height: 350,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ], borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                      Tab(
                        child: Text('LogIn',
                          style: TextStyle(color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text('SignUp',
                          style: TextStyle(color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff4791D7),
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  fixedSize: Size(390, 70),
                  backgroundColor: Color(0xff4791D7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: (){

                },
                child:
                const Text(
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
      ),
    );
  }
  List<Widget>tabs=[
    LoginScreen(),SignUpScreen(),
  ];
}
