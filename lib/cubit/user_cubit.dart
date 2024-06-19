import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_system/cubit/user_state.dart';

import '../apiModels/sign_in_model.dart';
import '../repositories/user_repository.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepository) : super(UserInitial());
  final UserRepository userRepository;
  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
//  GlobalObjectKey<FormState> signInFormKey = GlobalObjectKey(Object);
  //final List<GlobalObjectKey<FormState>> signInFormKey = List.generate(10, (index) => GlobalObjectKey<FormState>(index));
  //Sign in email
  TextEditingController signInuserName = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();
  //Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Profile Pic
  XFile? profilePic;
  //Sign up name
  TextEditingController signUpUserName = TextEditingController();
  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  //TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController signUrule = TextEditingController();
  SignInModel? user;

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
     // profilePic: profilePic!,
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

  // getUserProfile() async {
  //   emit(GetUserLoading());
  //   final response = await userRepository.getUserProfile();
  //   response.fold(
  //     (errMessage) => emit(GetUserFailure(errMessage: errMessage)),
  //     (user) => emit(GetUserSuccess(user: user)),
  //   );
  // }
}
