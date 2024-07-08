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
import 'package:smart_system/doctor/screens/%20Attendence%20Report%20tap/Attendence%20Report%20Screen.dart';
import 'package:smart_system/doctor/screens/Qr%20Scanner/course_name.dart';
import 'package:smart_system/doctor/screens/courses%20tap/Assignments%20tap/doctor_assignment_screen.dart';
import 'package:smart_system/doctor/screens/courses%20tap/Assignments%20tap/add_assignment.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_attachment.dart';
import 'package:smart_system/doctor/screens/courses%20tap/add_new_group.dart';
import 'package:smart_system/doctor/screens/courses%20tap/post%20tap/add_new_post.dart';
import 'package:smart_system/doctor/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/forget_pass.dart';
import 'package:smart_system/doctor/screens/login_signup/login_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/doctor/screens/login_signup/signup_screen.dart';
import 'package:smart_system/doctor/screens/profile%20Tap/profile_screen.dart';
import 'package:smart_system/doctor/screens/profile%20Tap/profile_screen2.dart';
import 'package:smart_system/parent/screens/Parent_home.dart';
import 'package:smart_system/parent/screens/login_signup/Verification_screen.dart';
import 'package:smart_system/parent/screens/login_signup/forget_pass.dart';
import 'package:smart_system/parent/screens/login_signup/login_screen.dart';
import 'package:smart_system/parent/screens/login_signup/reset_password_screen.dart';
import 'package:smart_system/parent/screens/login_signup/signup_screen.dart';
import 'package:smart_system/parent/screens/parent_home/faculty_calls%20tap/faculty_calls.dart';
import 'package:smart_system/parent/screens/parent_home/profile%20Tap/profile_screen.dart';
import 'package:smart_system/parent/screens/parent_home/profile%20Tap/profile_screen2.dart';
import 'package:smart_system/parent/screens/parent_home/student_TimeTable_tap/student_timeTable.dart';
import 'package:smart_system/repositories/user_repository.dart';
import 'package:smart_system/Student/screens/home/materials-tap/subject_group.dart';
import 'Student/screens/home/Attendance-tap/qr/Qr_read_screen.dart';
import 'Student/screens/home/Attendance-tap/attendance_screen.dart';
import 'Student/screens/home/Attendance-tap/qr/accepted_qr.dart';
import 'Student/screens/home/Quiz-tap/quiz_screen.dart';
import 'Student/screens/home/Quiz-tap/start_quiz.dart';
import 'Student/screens/home/TESTO.dart';
import 'Student/screens/home/home.dart';
import 'Student/screens/home/materials-tap/Feedback/feedback_ form.dart';
import 'Student/screens/home/materials-tap/Feedback/feedback_screen.dart';
import 'Student/screens/home/materials-tap/Materials.dart';
import 'Student/screens/home/materials-tap/assignment/add_answer_screen.dart';
import 'Student/screens/home/materials-tap/assignment/assinment_screen.dart';
import 'Student/screens/home/materials-tap/assignment/openAssignmentScreen.dart';
import 'Student/screens/home/materials-tap/attachment/lecture_atta-details.dart';
import 'Student/screens/home/materials-tap/attachment/attachment_screen.dart';
import 'Student/screens/home/materials-tap/attachment/lecture_atta.dart';
import 'Student/screens/home/materials-tap/attachment/section_atta-details.dart';
import 'Student/screens/home/materials-tap/meeting/meeting_information.dart';
import 'Student/screens/home/materials-tap/post/post_screen.dart';
import 'Student/screens/home/materials-tap/post/replyes_screen.dart';
import 'Student/screens/home/notification/notification_screen.dart';
import 'Student/screens/home/profile-tap/done.dart';
import 'Student/screens/home/profile-tap/profile_screen.dart';
import 'Student/screens/home/profile-tap/profile_screen2.dart';
import 'Student/screens/home/student-result/student_result.dart';
import 'Student/screens/home/subject-reg-tap/subject_registration.dart';
import 'Student/screens/login_signup/Verification_screen.dart';
import 'Student/screens/login_signup/forget_pass.dart';
import 'Student/screens/login_signup/login_screen.dart';
import 'Student/screens/login_signup/reset_password_screen.dart';
import 'Student/screens/login_signup/signup_screen.dart';
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
import 'doctor/screens/Qr Scanner/course_name_qr.dart';
import 'doctor/screens/Qr Scanner/date_calender.dart';
import 'doctor/screens/Qr Scanner/qr_scanner.dart';
import 'doctor/screens/courses tap/Create Meeting App/creat_meeting.dart';
import 'doctor/screens/courses tap/Create Meeting App/meeting_information.dart';
import 'doctor/screens/courses tap/doctor_attachment/doctor_attachment_screen.dart';
import 'doctor/screens/courses tap/doctor_attachment/doctor_lecture_atta.dart';
import 'doctor/screens/courses tap/doctor_subject_group.dart.dart';
import 'doctor/screens/courses tap/doctor_mat_page.dart';
import 'doctor/screens/courses tap/doctor_courses.dart';
import 'doctor/screens/courses tap/doctor_select_courses.dart';
import 'doctor/screens/courses tap/post tap/doctorpost_screen.dart';
import 'doctor/screens/doctor_home.dart';
import 'doctor/screens/quis tab/create_quiz.dart';
import 'doctor/screens/quis tab/doctor_obtions_quis.dart';
import 'Student/screens/home/materials-tap/mat_page.dart';
import 'package:smart_system/ui_splashes/splash1/splash1_screen.dart';
import 'package:smart_system/ui_splashes/splash0/splash0_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  final isLoggedIn = await CacheHelper().getData(key: 'isLoggedIn') ?? false;
  runApp(
    BlocProvider(
      create: (context) =>
          UserCubit(UserRepository(api: DioConsumer(dio: Dio())),),
      child:  MyApp(isLoggedIn: isLoggedIn),
    ),
  );
}

class MyApp extends StatelessWidget {
   final bool isLoggedIn;
    MyApp({super.key, required this.isLoggedIn});

    @override
  Widget build(BuildContext context) {
      context.read<UserCubit>().getUserProfile();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:
         // splash0.routeName,
           isLoggedIn ? HomeScreen.routeName : splash0.routeName,
          routes: {
            ReplyesScreen.routeName: (context) => ReplyesScreen(),
            Testooo.routeName: (context) => Testooo(),
            Done.routeName: (context) => Done(),
            LectureAttachmentDetails.routeName: (context) => LectureAttachmentDetails(),
            //student
            splash0.routeName: (context) => splash0(),
            splash1.routeName: (context) => splash1(),
            LoginScreen.routeName: (context) => LoginScreen(),
            SignUpScreen.routeName: (context) => SignUpScreen(),
            ForgetPassword.routeName: (context) => ForgetPassword(),
            VerificationScreen.routeName: (context) => VerificationScreen(),
            ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
            HomeScreen.routeName: (context) => HomeScreen(),
            SubjectRegistrationScreen.routeName: (context) =>
                SubjectRegistrationScreen(),
            MaterialsScreen.routeName: (context) => MaterialsScreen(),
            NotificationScreen.routeName: (context) => NotificationScreen(),
            StudentResultScreen.routeName: (context) => StudentResultScreen(),
            QuizScreen.routeName: (context) => QuizScreen(),
            StartQuiz.routeName: (context) => StartQuiz(),
            SubjectGroups.routeName: (context) => SubjectGroups(),
            MatPagee.routeName: (context) => MatPagee(),
            AssinmentScreen.routeName: (context) => AssinmentScreen(),
            OpenAssignmentScreen.routeName: (context) => OpenAssignmentScreen(),
            AddAnswerScreen.routeName: (context) => AddAnswerScreen(),
            AttachmentScreen.routeName: (context) => AttachmentScreen(),
            SectionAttavhmentDetails.routeName: (context) => SectionAttavhmentDetails(),
            FeedbackScreen.routeName: (context) => FeedbackScreen(),
            FeedbackForm.routeName: (context) => FeedbackForm(),
            MeetingScreen.routeName: (context) => MeetingScreen(),
            PostScreen.routeName: (context) => PostScreen(),
            LectureAttavhment.routeName: (context) => LectureAttavhment(),
            Profile.routeName: (context) => Profile(),
            Profile2.routeName: (context) => Profile2(),
            AttendanceScreen.routeName: (context) => AttendanceScreen(),
            QrReadScreen.routeName: (context) => QrReadScreen(),
            AcceptedQrScreen.routeName: (context) => AcceptedQrScreen(),
            //admin
            LoginScreenAdmin.routeName: (context) => LoginScreenAdmin(),
            SignUpScreenAdmin.routeName: (context) => SignUpScreenAdmin(),
            ForgetPasswordAdmin.routeName: (context) => ForgetPasswordAdmin(),
            VerificationScreenAdmin.routeName: (context) =>
                VerificationScreenAdmin(),
            ResetPasswordScreenAdmin.routeName: (context) =>
                ResetPasswordScreenAdmin(),
            AdminHomeScreen.routeName: (context) => AdminHomeScreen(),
            StudentsList.routeName: (context) => StudentsList(),
            WriteMessage.routeName: (context) => WriteMessage(),
            MessageList.routeName: (context) => MessageList(),
            StudentListResult.routeName: (context) => StudentListResult(),
            CoursesScreen.routeName: (context) => CoursesScreen(),
            NewCourseScreen.routeName: (context) => NewCourseScreen(),
            EditCourseScreen.routeName: (context) => EditCourseScreen(),
            StaffMember.routeName: (context) => StaffMember(),
            AddStaff.routeName: (context) => AddStaff(),
            ProfileAdmin.routeName: (context) => ProfileAdmin(),
            Profile2Admin.routeName: (context) => Profile2Admin(),

            //doctor
            LoginScreenDoctor.routeName: (context) => LoginScreenDoctor(),
            SignUpScreenDoctor.routeName: (context) => SignUpScreenDoctor(),
            ForgetPasswordDoctor.routeName: (context) => ForgetPasswordDoctor(),
            VerificationScreenDoctor.routeName: (context) =>
                VerificationScreenDoctor(),
            ResetPasswordScreenDoctor.routeName: (context) =>
                ResetPasswordScreenDoctor(),
            DoctorHomeScreen.routeName: (context) => DoctorHomeScreen(),
            DoctorSelectCoursesScreen.routeName: (context) =>
                DoctorSelectCoursesScreen(),
            DoctorCoursesScreen.routeName: (context) => DoctorCoursesScreen(),
            AddNewGroup.routeName: (context) => AddNewGroup(),
            AddAttachment.routeName: (context) => AddAttachment(),
            DoctorSubjectGroups.routeName: (context) => DoctorSubjectGroups(),
            DoctorMatPagee.routeName: (context) => DoctorMatPagee(),
            DoctorAttachmentScreen.routeName: (context) =>
                DoctorAttachmentScreen(),
            DoctorLectureAttavhment.routeName: (context) =>
                DoctorLectureAttavhment(),
            AddNewPost.routeName: (context) => AddNewPost(),
            AddAssignment.routeName: (context) => AddAssignment(),
            CreateMeetingScreen.routeName: (context) => CreateMeetingScreen(),
            MeetingInformationScreen.routeName: (context) =>
                MeetingInformationScreen(),
            DoctorProfile1.routeName: (context) => DoctorProfile1(),
            DoctorProfile2.routeName: (context) => DoctorProfile2(),
            CourseNameQr.routeName: (context) => CourseNameQr(),
            QrScannerScreen.routeName: (context) => QrScannerScreen(),
            DatePickerExample.routeName: (context) => DatePickerExample(),
            CourseNameQrScreen.routeName: (context) => CourseNameQrScreen(),
            CreateQuiz.routeName: (context) => CreateQuiz(),
            DoctorPostScreen.routeName: (context) => DoctorPostScreen(),
            DoctorAssignmentScreen.routeName: (context) =>
                DoctorAssignmentScreen(),
            DoctorObtionsQuis.routeName: (context) => DoctorObtionsQuis(),
            AttendenceReportScreen.routeName: (context) =>
                AttendenceReportScreen(),

            //parent
            ParentLoginScreen.routeName: (context) => ParentLoginScreen(),
            ParentSignUpScreen.routeName: (context) => ParentSignUpScreen(),
            ParentForgetPassword.routeName: (context) => ParentForgetPassword(),
            ParentVerificationScreen.routeName: (context) =>
                ParentVerificationScreen(),
            ParentResetPasswordScreen.routeName: (context) =>
                ParentResetPasswordScreen(),
            ParentProfile1.routeName: (context) => ParentProfile1(),
            ParentProfile2.routeName: (context) => ParentProfile2(),
            ParentHomeScreen.routeName: (context) => ParentHomeScreen(),
            FaculityCalls.routeName: (context) => FaculityCalls(),
            StudentTimeTableScreen.routeName: (context) =>
                StudentTimeTableScreen(),
          },
        );
      },
    );
  }
}
