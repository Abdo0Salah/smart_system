import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_system/cubit/user_state.dart';
import '../apiModels/sign_in_model.dart';
import '../apiModels/subjectRegisteration_model.dart';
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
      level: int.parse(signUpLevel.text ),
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
        emit(GetUserFailure(errMessage:error));
      },
          (user) {
        print('User data received in Cubit: $user');
        emit(GetUserSuccess(user: user));
      },
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
}
