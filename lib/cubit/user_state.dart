import '../apiModels/Register_Courses_Model.dart';
import '../apiModels/getByLevelAndTerm.dart';
import '../apiModels/subjectRegisteration_model.dart';
import '../apiModels/update_user_model.dart';
import '../apiModels/user_model.dart';

class UserState {}

final class UserInitial extends UserState {}

final class UpdateUserLoading extends UserState {}

final class UpdateUserSuccess extends UserState {
  final UpdateUserModel updatedUser;

  UpdateUserSuccess({required this.updatedUser});
}

final class UpdateUserFailure extends UserState {
  final String errMessage;

  UpdateUserFailure({required this.errMessage});
}




final class GetCoursesbyLevelAndTermSuccess extends UserState {
  final List<GetCoursesbyLevelAndTermModel> courseR;

  GetCoursesbyLevelAndTermSuccess({required this.courseR});
}

final class GetCoursesbyLevelAndTermLoading extends UserState {}

final class GetCoursesbyLevelAndTermFailure extends UserState {
  final String errMessage;

  GetCoursesbyLevelAndTermFailure({required this.errMessage});
}






final class SubjectRegisterationSuccess extends UserState {
  final List<SubjectRegisterationModel> subjectR;

  SubjectRegisterationSuccess({required this.subjectR});
}

final class SubjectRegisterationLoading extends UserState {}

final class SubjectRegisterationFailure extends UserState {
  final String errMessage;

  SubjectRegisterationFailure({required this.errMessage});
}


final class CourseRegistrationSuccess extends UserState {
  final RegisterCoursesModel registerCoursesModel;

  CourseRegistrationSuccess({required this.registerCoursesModel});
}

final class CourseRegistrationLoading extends UserState {}

final class CourseRegistrationFailure extends UserState {
  final String errMessage;

  CourseRegistrationFailure({required this.errMessage});
}




final class SignInSuccess extends UserState {}

final class UploadProfilePic extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class SignUpSuccess extends UserState {}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

final class GetUserSuccess extends UserState {
 final UserModel user;

 GetUserSuccess({required this.user});

}

final class GetUserLoading extends UserState {}

final class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}
class UserLogoutLoading extends UserState {}

class UserLogoutSuccess extends UserState {}

class UserLogoutFailure extends UserState {
  final String errMessage;

  UserLogoutFailure({required this.errMessage});
}








