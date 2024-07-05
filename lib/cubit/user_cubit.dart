import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_system/core/api/end_ponits.dart';
import 'package:smart_system/cubit/user_state.dart';
import '../apiModels/sign_in_model.dart';
import '../apiModels/subjectRegisteration_model.dart';
import '../cache/cache_helper.dart';
import '../repositories/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepository) : super(UserInitial());

  final UserRepository userRepository;

  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
//  GlobalObjectKey<FormState> signInFormKey = GlobalObjectKey(Object);
  //final List<GlobalObjectKey<FormState>> signInFormKey = List.generate(10, (index) => GlobalObjectKey<FormState>(index));
  TextEditingController signInuserName = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Profile Pic
  XFile? profilePic;
  //Sign up name
  TextEditingController signUpUserName = TextEditingController();
  TextEditingController signUpName = TextEditingController();
  //TextEditingController signUpPhoneNumber = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController signUrule = TextEditingController();
  TextEditingController signUpPhone = TextEditingController();
  TextEditingController signUpLevel = TextEditingController();
  TextEditingController signUpTerm = TextEditingController();
  TextEditingController signUpGender = TextEditingController();
  TextEditingController signUpSsn = TextEditingController();

  SignInModel? user;
  SubjectRegisterationModel? SubjectR;

  final TextEditingController nameController0 = TextEditingController();
  final TextEditingController emailController0 = TextEditingController();
  final TextEditingController universityEmailController0 =
      TextEditingController();
  final TextEditingController passwordController0 = TextEditingController();
  final TextEditingController ssnController0 = TextEditingController();
  final TextEditingController phoneController0 = TextEditingController();
  final TextEditingController genderController0 = TextEditingController();
  final TextEditingController levelController0 = TextEditingController();
  final TextEditingController termController0 = TextEditingController();
  final TextEditingController parentPhoneController0 = TextEditingController();
  final TextEditingController parentEmailController0 = TextEditingController();

  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }

  signUp() async {
    emit(SignUpLoading());
    final response = await userRepository.signUp(
      userName: signUpUserName.text,
      name: signUpName.text,
      email: signUpEmail.text,
      password: signUpPassword.text,
      confirmPassword: confirmPassword.text,
      role: signUrule.text,
      phone: signUpPhone.text,
      level: int.parse(signUpLevel.text),
      term: int.parse(signUpTerm.text),
      gender: signUpGender.text,
      ssn: signUpSsn.text,
    );
    response.fold(
      (errMessage) => emit(SignUpFailure(errMessage: errMessage)),
      (signUpModel) => emit(SignUpSuccess()),
    );
  }

  signIn() async {
    emit(SignInLoading());
    final response = await userRepository.signIn(
      userName: signInuserName.text,
      password: signInPassword.text,
    );
    response.fold(
      (errMessage) => emit(SignInFailure(errMessage: errMessage)),
      (signInModel) => emit(SignInSuccess()),
    );
  }

  ///profile
//   getUserProfile() async {
//     emit(GetUserLoading());
//     final response = await userRepository.getUserProfile();
//     response.fold(
//           (errMessage) => emit(GetUserFailure(errMessage: errMessage)),
//           (user) => emit(GetUserSuccess(user: user)),
//     );
//   }
  Future<void> getUserProfile() async {
    emit(GetUserLoading());
    final result = await userRepository.getUserProfile();
    result.fold(
      (error) {
        print('Error: $error');
        emit(GetUserFailure(errMessage: error));
      },
      (user) {
        print('User data received in Cubit: $user');
        emit(GetUserSuccess(user: user));
      },
    );
  }

  Future<void> updateUserProfile(
      // required String id,
      // required String name,
      // required String email,
      // required String universityEmail,
      // required String password,
      // required String ssn,
      // required String phone,
      // required String gender,
      // required int level,
      // required int term,
      // required String parentPhone,
      // required String parentEmail,
      ) async {
    emit(UpdateUserLoading());
    final result = await userRepository.updateUser(
      id: CacheHelper().getData(key: ApiKey.id) ?? '',
      name: nameController0.text,
      email: emailController0.text,
      universityEmail: universityEmailController0.text,
      password: passwordController0.text,
      ssn: ssnController0.text,
      phone: phoneController0.text,
      gender: genderController0.text,
      level: int.parse(levelController0.text),
      term: int.parse(termController0.text),
      parentPhone: parentPhoneController0.text,
      parentEmail: parentEmailController0.text,
    );
    result.fold(
      (error) => emit(UpdateUserFailure(errMessage: error)),
      (updatedUser) => emit(UpdateUserSuccess(updatedUser: updatedUser)),
    );
  }

  SubjectRegisteration() async {
    emit(SubjectRegisterationLoading());
    final response = await userRepository.SubjectRegisteration();
    print(response.toString());
    response.fold(
      (errMessage) => emit(SubjectRegisterationFailure(errMessage: errMessage)),
      (subjectR) => emit(SubjectRegisterationSuccess(subjectR: subjectR)),
    );
  }

  Future<void> registerCourses(List<int> courseIds) async {
    emit(CourseRegistrationLoading());
    final response = await userRepository.registerCourses(courseIds);
    response.fold(
      (errMessage) => emit(CourseRegistrationFailure(errMessage: errMessage)),
      (registerCoursesModel) => emit(CourseRegistrationSuccess(
          registerCoursesModel: registerCoursesModel)),
    );
  }

  Future<void> logout() async {
    emit(UserLogoutLoading());
    final response = await userRepository.logout();
    response.fold(
      (error) => emit(UserLogoutFailure(errMessage: error)),
      (_) => emit(UserLogoutSuccess()),
    );
  }

  Future<void> checkLoginStatus() async {
    final isLoggedIn = await userRepository.isLoggedIn();
    if (isLoggedIn) {
      emit(SignInSuccess());
    } else {
      emit(UserInitial());
    }
  }






  getGroups() async {
    emit(getGroupsLoading());
    final response = await userRepository.getGroups();
    print(response.toString());
    response.fold(
          (errMessage) => emit(getGroupsFailure(errMessage: errMessage)),
          (groupR) => emit(getGroupsSuccess(groupR: groupR)),
    );
  }


  GetAllMeetings() async {
    emit(GetAllMeetingsLoading());
    final response = await userRepository.GetAllMeetings();
    print(response.toString());
    response.fold(
          (errMessage) => emit(GetAllMeetingsFailure(errMessage: errMessage)),
          (meetingR) => emit(GetAllMeetingsSuccess(meetingR: meetingR)),
    );
  }

  GetAllAssignments() async {
    emit(GetAllAssignmentsLoading());
    final response = await userRepository.GetAllAssignments();
    print(response.toString());
    response.fold(
          (errMessage) => emit(GetAllAssignmentsFailure(errMessage: errMessage)),
          (assignmentR) => emit(GetAllAssignmentsSuccess(assignmentR: assignmentR)),
    );
  }


  GetAllLectureAssignments() async {
    emit(GetAllLectureAssignmentsLoading());
    final response = await userRepository.GetAllLectureAssignments();
    print(response.toString());
    response.fold(
          (errMessage) => emit(GetAllLectureAssignmentsFailure(errMessage: errMessage)),
          (lectureAssignmentR) => emit(GetAllLectureAssignmentsSuccess(lectureAssignmentR: lectureAssignmentR)),
    );
  }


  GetAllSectionAssignments() async {
    emit(GetAllSectionAssignmentsLoading());
    final response = await userRepository.GetAllSectionAssignments();
    print(response.toString());
    response.fold(
          (errMessage) => emit(GetAllSectionAssignmentsFailure(errMessage: errMessage)),
          (sectionAssignmentR) => emit(GetAllSectionAssignmentsSuccess(sectionAssignmentR: sectionAssignmentR)),
    );
  }





  GetCoursesbyLevelAndTerm() async {
    emit(GetCoursesbyLevelAndTermLoading());
    final response = await userRepository.GetCoursesbyLevelAndTerm();
    print(response.toString());
    response.fold(
          (errMessage) => emit(GetCoursesbyLevelAndTermFailure(errMessage: errMessage)),
          (courseR) => emit(GetCoursesbyLevelAndTermSuccess(courseR: courseR)),
    );
  }




}
