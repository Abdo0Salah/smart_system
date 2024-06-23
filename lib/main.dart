import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/admin/screens/admin_home/Staff%20Tap/add_staff.dart';
import 'package:smart_system/admin/screens/admin_home/Staff%20Tap/staff_member.dart';
import 'package:smart_system/admin/screens/admin_home/Students%20Tap/message_list.dart';
import 'package:smart_system/admin/screens/admin_home/profile%20Tap/profile_screen.dart';
import 'package:smart_system/admin/screens/admin_home/profile%20Tap/profile_screen2.dart';
import 'package:smart_system/admin/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/admin/screens/login_signup/forget_pass.dart';
import 'package:smart_system/admin/screens/login_signup/login_screen.dart';
import 'package:smart_system/admin/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/admin/screens/login_signup/signup_screen.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_attachment.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_new_group.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_post/add_new_post.dart';
import 'package:smart_system/doctor/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/forget_pass.dart';
import 'package:smart_system/doctor/screens/login_signup/login_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/signup_screen.dart';
import 'package:smart_system/repositories/user_repository.dart';
import 'package:smart_system/screens/Feedback/feedback_%20form.dart';
import 'package:smart_system/screens/Feedback/feedback_screen.dart';
import 'package:smart_system/screens/Quiz/quiz_screen.dart';
import 'package:smart_system/screens/Quiz/start_quiz.dart';
import 'package:smart_system/screens/assignment/add_answer_screen.dart';
import 'package:smart_system/screens/assignment/assinment_screen.dart';
import 'package:smart_system/screens/assignment/openAssignmentScreen.dart';
import 'package:smart_system/screens/attachment/attachment_screen.dart';
import 'package:smart_system/screens/attachment/lecture_atta.dart';
import 'package:smart_system/screens/home/3.dart';
import 'package:smart_system/screens/home/4.dart';
import 'package:smart_system/screens/home/5.dart';
import 'package:smart_system/screens/home/7.dart';
import 'package:smart_system/screens/home/8.dart';
import 'package:smart_system/screens/home/Attendance/attendance_screen.dart';
import 'package:smart_system/screens/home/Materials.dart';
import 'package:smart_system/screens/home/home.dart';
import 'package:smart_system/screens/home/subject_registration.dart';
import 'package:smart_system/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/screens/login_signup/forget_pass.dart';
import 'package:smart_system/screens/login_signup/login_screen.dart';
import 'package:smart_system/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/screens/login_signup/signup_screen.dart';
import 'package:smart_system/screens/meeting_screen.dart';
import 'package:smart_system/screens/post/post_screen.dart';
import 'package:smart_system/screens/profile/profile_screen.dart';
import 'package:smart_system/screens/profile/profile_screen2.dart';
import 'package:smart_system/screens/ui_splashes/splash0/splash0_screen.dart';
import 'package:smart_system/screens/ui_splashes/splash1/splash1_screen.dart';
import 'package:smart_system/subject_group.dart';

import 'admin/screens/admin_home/Students Tap/Student_list-result.dart';
import 'admin/screens/admin_home/Students Tap/Students_List.dart';
import 'admin/screens/admin_home/Students Tap/Write-message.dart';
import 'admin/screens/admin_home/admin-home.dart';
import 'admin/screens/admin_home/courses tap/courses.dart';
import 'admin/screens/admin_home/courses tap/edit_course.dart';
import 'admin/screens/admin_home/courses tap/new_course.dart';
import 'cache/cache_helper.dart';
import 'core/api/dio_consumer.dart';
import 'cubit/user_cubit.dart';

import 'doctor/screens/courses tap/doctor_attachment/doctor_attachment_screen.dart';
import 'doctor/screens/courses tap/doctor_attachment/doctor_lecture_atta.dart';
import 'doctor/screens/courses tap/doctor_subject_group.dart.dart';
import 'doctor/screens/courses tap/doctor_mat_page.dart';
import 'doctor/screens/courses tap/doctor_courses.dart';
import 'doctor/screens/courses tap/doctor_select_courses.dart';
import 'doctor/screens/doctor_home.dart';
import 'mat_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(
    BlocProvider(
      create: (context) =>
          UserCubit(UserRepository(api: DioConsumer(dio: Dio()))),
      child: const MyApp(),
    ),
  );
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
          initialRoute: AddNewPost.routeName,
          routes: {
            //student
            splash0.routeName: (context) => splash0(),
            splash1.routeName: (context) => splash1(),
            LoginScreen.routeName: (context) => LoginScreen(),
            SignUpScreen.routeName: (context) => SignUpScreen(),
            ForgetPassword.routeName: (context) => ForgetPassword(),
            VerificationScreen.routeName: (context) => VerificationScreen(),
            ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
            HomeScreen.routeName: (context) => HomeScreen(),
            SubjectRegistration.routeName: (context) => SubjectRegistration(),
            MaterialsScreen.routeName: (context) => MaterialsScreen(),
            QuizScreen.routeName: (context) => QuizScreen(),
            StartQuiz.routeName: (context) => StartQuiz(),
            T.routeName: (context) => T(),
            N.routeName: (context) => N(),
            Ss.routeName: (context) => Ss(),
            S.routeName: (context) => S(),
            Q.routeName: (context) => Q(),
            SubjectGroups.routeName: (context) =>  SubjectGroups(),
            MatPagee.routeName: (context) =>  MatPagee(),
            AssinmentScreen.routeName: (context) =>  AssinmentScreen(),
            OpenAssignmentScreen.routeName: (context) =>  OpenAssignmentScreen(),
            AddAnswerScreen.routeName: (context) =>  AddAnswerScreen(),
            AttachmentScreen.routeName: (context) =>  AttachmentScreen(),
            FeedbackScreen.routeName: (context) =>  FeedbackScreen(),
            FeedbackForm.routeName: (context) =>  FeedbackForm(),
            MeetingScreen.routeName: (context) =>  MeetingScreen(),
            PostScreen.routeName: (context) =>  PostScreen(),
            LectureAttavhment.routeName: (context) =>  LectureAttavhment(),
            Profile.routeName:(context) => Profile(),
            Profile2.routeName:(context) => Profile2(),
            AttendanceScreen.routeName:(context) => AttendanceScreen(),

            //admin
            LoginScreenAdmin.routeName: (context) => LoginScreenAdmin(),
            SignUpScreenAdmin.routeName: (context) => SignUpScreenAdmin(),
            ForgetPasswordAdmin.routeName: (context) => ForgetPasswordAdmin(),
            VerificationScreenAdmin.routeName: (context) => VerificationScreenAdmin(),
            ResetPasswordScreenAdmin.routeName: (context) => ResetPasswordScreenAdmin(),
            AdminHomeScreen.routeName:(context) => AdminHomeScreen(),
            StudentsList.routeName: (context) => StudentsList(),
            WriteMessage.routeName: (context) => WriteMessage(),
            MessageList.routeName: (context) => MessageList(),
            StudentListResult.routeName: (context) => StudentListResult(),
            CoursesScreen.routeName:(context) => CoursesScreen(),
            NewCourseScreen.routeName:(context) => NewCourseScreen(),
            EditCourseScreen.routeName:(context) => EditCourseScreen(),
            StaffMember.routeName:(context) => StaffMember(),
            AddStaff.routeName:(context) => AddStaff(),
            ProfileAdmin.routeName:(context) => ProfileAdmin(),
            Profile2Admin.routeName:(context) => Profile2Admin(),

            //doctor
            LoginScreenDoctor.routeName: (context) => LoginScreenDoctor(),
            SignUpScreenDoctor.routeName: (context) => SignUpScreenDoctor(),
            ForgetPasswordDoctor.routeName: (context) => ForgetPasswordDoctor(),
            VerificationScreenDoctor.routeName: (context) => VerificationScreenDoctor(),
            ResetPasswordScreenDoctor.routeName: (context) => ResetPasswordScreenDoctor(),
            DoctorHomeScreen.routeName:(context) => DoctorHomeScreen(),
            DoctorSelectCoursesScreen.routeName:(context) => DoctorSelectCoursesScreen(),
            DoctorCoursesScreen.routeName:(context) => DoctorCoursesScreen(),
            AddNewGroup.routeName:(context) => AddNewGroup(),
            AddAttachment.routeName:(context) => AddAttachment(),

            DoctorSubjectGroups.routeName:(context) => DoctorSubjectGroups(),
            DoctorMatPagee.routeName:(context) => DoctorMatPagee(),
            DoctorAttachmentScreen.routeName:(context) => DoctorAttachmentScreen(),
            DoctorLectureAttavhment.routeName:(context) => DoctorLectureAttavhment(),
            AddNewPost.routeName:(context) => AddNewPost(),
          },
        );
      },
    );
  }
}