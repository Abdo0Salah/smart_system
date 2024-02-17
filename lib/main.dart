import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/screens/assinment_screen.dart';
import 'package:smart_system/screens/attachment/attachment_screen.dart';
import 'package:smart_system/screens/attachment/lecture_atta.dart';
import 'package:smart_system/screens/feedback_screen.dart';
import 'package:smart_system/screens/home/2.dart';
import 'package:smart_system/screens/home/3.dart';
import 'package:smart_system/screens/home/4.dart';
import 'package:smart_system/screens/home/5.dart';
import 'package:smart_system/screens/home/6.dart';
import 'package:smart_system/screens/home/7.dart';
import 'package:smart_system/screens/home/8.dart';
import 'package:smart_system/screens/home/home.dart';
import 'package:smart_system/screens/home/subject_registration.dart';
import 'package:smart_system/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/screens/login_signup/forget_pass.dart';
import 'package:smart_system/screens/login_signup/login_screen.dart';
import 'package:smart_system/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/screens/login_signup/signup_screen.dart';
import 'package:smart_system/screens/login_signup/tabbar.dart';
import 'package:smart_system/screens/meeting_screen.dart';
import 'package:smart_system/screens/post_screen.dart';
import 'package:smart_system/screens/ui_splashes/splash0/splash0_screen.dart';
import 'package:smart_system/screens/ui_splashes/splash1/splash1_screen.dart';
import 'package:smart_system/subject_group.dart';

import 'mat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SubjectGroups.routeName,
          routes: {
            splash0.routeName: (context) => splash0(),
            splash1.routeName: (context) => splash1(),
            TabBar_.routeName: (context) => TabBar_(),
            LoginScreen.routeName: (context) => LoginScreen(),
            SignUpScreen.routeName: (context) => SignUpScreen(),
            ForgetPassword.routeName: (context) => ForgetPassword(),
            VerificationScreen.routeName: (context) => VerificationScreen(),
            ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
            HomeScreen.routeName: (context) => HomeScreen(),
            SubjectRegistration.routeName: (context) => SubjectRegistration(),
            M.routeName: (context) => M(),
            T.routeName: (context) => T(),
            N.routeName: (context) => N(),
            Ss.routeName: (context) => Ss(),
            P.routeName: (context) => P(),
            S.routeName: (context) => S(),
            Q.routeName: (context) => Q(),
            SubjectGroups.routeName: (context) =>  SubjectGroups(),
            MatPagee.routeName: (context) =>  MatPagee(),
            AssinmentScreen.routeName: (context) =>  AssinmentScreen(),
            AttachmentScreen.routeName: (context) =>  AttachmentScreen(),
            FeedbackScreen.routeName: (context) =>  FeedbackScreen(),
            MeetingScreen.routeName: (context) =>  MeetingScreen(),
            PostScreen.routeName: (context) =>  PostScreen(),
            LectureAttavhment.routeName: (context) =>  LectureAttavhment(),

          },
        );
      },
    );
  }
}
