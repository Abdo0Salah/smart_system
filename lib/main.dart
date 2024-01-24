import 'package:flutter/material.dart';
import 'package:smart_system/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/screens/login_signup/forget_pass.dart';
import 'package:smart_system/screens/login_signup/login_screen.dart';
import 'package:smart_system/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/screens/login_signup/signup_screen.dart';
import 'package:smart_system/screens/login_signup/tabbar.dart';
import 'package:smart_system/screens/ui_splashes/splash0/splash0_screen.dart';
import 'package:smart_system/screens/ui_splashes/splash1/splash1_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: splash0.routeName,
      routes: {
        splash0.routeName : (context) => splash0(),
        splash1.routeName : (context) => splash1(),
        TabBar_.routeName : (context) => TabBar_(),
        LoginScreen.routeName : (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPassword.routeName: (context) => ForgetPassword(),
        VerificationScreen.routeName : (context) => VerificationScreen(),
        ResetPasswordScreen.routeName : (context) => ResetPasswordScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
