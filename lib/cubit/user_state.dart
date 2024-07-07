import '../apiModels/GetFilesDataOfLecturesAttachmentModel.dart';
import '../apiModels/GetSectionsAttachmentModel.dart';
import '../apiModels/GetfilesdataofSectionsattachmentModel.dart';
import '../apiModels/OpenAssignmentModel.dart';
import '../apiModels/Register_Courses_Model.dart';
import '../apiModels/getByLevelAndTerm.dart';
import '../apiModels/get_all_assignments_model.dart';
import '../apiModels/get_all_meetings_model.dart';
import '../apiModels/get_all_posts_model.dart';
import '../apiModels/get_all_replies_model.dart';
import '../apiModels/get_groups_model.dart';
import '../apiModels/get_lecture_assignment_model.dart';
import '../apiModels/get_lectures_attachment.dart';
import '../apiModels/get_section_assignment_model.dart';
import '../apiModels/subjectRegisteration_model.dart';
import '../apiModels/update_user_model.dart';
import '../apiModels/user_model.dart';

class UserState {}

final class UserInitial extends UserState {}

final class UploadProfilePic extends UserState {}

///--------------------------------Student--------------------------------------

final class UpdateUserLoading extends UserState {}

final class UpdateUserSuccess extends UserState {
  final UpdateUserModel updatedUser;

  UpdateUserSuccess({required this.updatedUser});
}

final class UpdateUserFailure extends UserState {
  final String errMessage;

  UpdateUserFailure({required this.errMessage});
}

///
final class GetCoursesbyLevelAndTermSuccess extends UserState {
  final List<GetCoursesbyLevelAndTermModel> courseR;

  GetCoursesbyLevelAndTermSuccess({required this.courseR});
}

final class GetCoursesbyLevelAndTermLoading extends UserState {}

final class GetCoursesbyLevelAndTermFailure extends UserState {
  final String errMessage;

  GetCoursesbyLevelAndTermFailure({required this.errMessage});
}

///
final class SubjectRegisterationSuccess extends UserState {
  final List<SubjectRegisterationModel> subjectR;

  SubjectRegisterationSuccess({required this.subjectR});
}

final class SubjectRegisterationLoading extends UserState {}

final class SubjectRegisterationFailure extends UserState {
  final String errMessage;

  SubjectRegisterationFailure({required this.errMessage});
}

///
final class getGroupsSuccess extends UserState {
  final List<GetGroupsModel> groupR;

  getGroupsSuccess({required this.groupR});
}

final class getGroupsLoading extends UserState {}

final class getGroupsFailure extends UserState {
  final String errMessage;

  getGroupsFailure({required this.errMessage});
}

///
final class GetAllMeetingsSuccess extends UserState {
  final List<GetAllMeetingsModel> meetingR;

  GetAllMeetingsSuccess({required this.meetingR});
}

final class GetAllMeetingsLoading extends UserState {}

final class GetAllMeetingsFailure extends UserState {
  final String errMessage;

  GetAllMeetingsFailure({required this.errMessage});
}

///
final class GetAllPostsSuccess extends UserState {
  final List<GetAllPostsModel> postR;

  GetAllPostsSuccess({required this.postR});
}

final class GetAllPostsLoading extends UserState {}

final class GetAllPostsFailure extends UserState {
  final String errMessage;

  GetAllPostsFailure({required this.errMessage});
}

///
final class GetAllRepliesSuccess extends UserState {
  final List<GetAllRepliesModel> replyR;

  GetAllRepliesSuccess({required this.replyR});
}

final class GetAllRepliesLoading extends UserState {}

final class GetAllRepliesFailure extends UserState {
  final String errMessage;

  GetAllRepliesFailure({required this.errMessage});
}

///
final class GetLecturesAttachmentSuccess extends UserState {
  final List<GetLecturesAttachmentModel> attachmenR;

  GetLecturesAttachmentSuccess({required this.attachmenR});
}

final class GetLecturesAttachmentLoading extends UserState {}

final class GetLecturesAttachmentFailure extends UserState {
  final String errMessage;

  GetLecturesAttachmentFailure({required this.errMessage});
}

///
final class GetSectionsAttachmentSuccess extends UserState {
  final List<GetSectionsAttachmentModel> attachmenR;

  GetSectionsAttachmentSuccess({required this.attachmenR});
}

final class GetSectionsAttachmentLoading extends UserState {}

final class GetSectionsAttachmentFailure extends UserState {
  final String errMessage;

  GetSectionsAttachmentFailure({required this.errMessage});
}

///
final class GetFilesDataOfLecturesAttachmentSuccess extends UserState {
  final List<GetfilesdataoflecturesattachmentModel> FilesDataR;

  GetFilesDataOfLecturesAttachmentSuccess({required this.FilesDataR});
}

final class GetFilesDataOfLecturesAttachmentLoading extends UserState {}

final class GetFilesDataOfLecturesAttachmentFailure extends UserState {
  final String errMessage;

  GetFilesDataOfLecturesAttachmentFailure({required this.errMessage});
}

///
final class GetFilesDataOfSectionsAttachmentSuccess extends UserState {
  final List<Getfilesdataofsectionsattachmentmodel> FilesDataR;

  GetFilesDataOfSectionsAttachmentSuccess({required this.FilesDataR});
}

final class GetFilesDataOfSectionsAttachmentLoading extends UserState {}

final class GetFilesDataOfSectionsAttachmentFailure extends UserState {
  final String errMessage;

  GetFilesDataOfSectionsAttachmentFailure({required this.errMessage});
}

///
final class GetAllAssignmentsSuccess extends UserState {
  final List<GetAllAssignmentsModel> assignmentR;

  GetAllAssignmentsSuccess({required this.assignmentR});
}

final class GetAllAssignmentsLoading extends UserState {}

final class GetAllAssignmentsFailure extends UserState {
  final String errMessage;

  GetAllAssignmentsFailure({required this.errMessage});
}

///
final class GetAllLectureAssignmentsSuccess extends UserState {
  final List<GetAllLectureAssignmentsModel> lectureAssignmentR;

  GetAllLectureAssignmentsSuccess({required this.lectureAssignmentR});
}

final class GetAllLectureAssignmentsLoading extends UserState {}

final class GetAllLectureAssignmentsFailure extends UserState {
  final String errMessage;

  GetAllLectureAssignmentsFailure({required this.errMessage});
}

///
final class GetAllSectionAssignmentsSuccess extends UserState {
  final List<GetAllSectionAssignmentsModel> sectionAssignmentR;

  GetAllSectionAssignmentsSuccess({required this.sectionAssignmentR});
}

final class GetAllSectionAssignmentsLoading extends UserState {}

final class GetAllSectionAssignmentsFailure extends UserState {
  final String errMessage;

  GetAllSectionAssignmentsFailure({required this.errMessage});
}

///
final class CourseRegistrationSuccess extends UserState {
  final RegisterCoursesModel registerCoursesModel;

  CourseRegistrationSuccess({required this.registerCoursesModel});
}

final class CourseRegistrationLoading extends UserState {}

final class CourseRegistrationFailure extends UserState {
  final String errMessage;

  CourseRegistrationFailure({required this.errMessage});
}

///
final class SignInSuccess extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}
///
final class AddCommentLoading extends UserState {}

final class AddCommentSuccess extends UserState {}

final class AddCommentFailure extends UserState {
  final String errMessage;

  AddCommentFailure({required this.errMessage});
}
///
final class SignUpSuccess extends UserState {}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

///
final class GetUserSuccess extends UserState {
 final UserModel user;

 GetUserSuccess({required this.user});

}

final class GetUserLoading extends UserState {}

final class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}

///
class UserLogoutLoading extends UserState {}

class UserLogoutSuccess extends UserState {}

class UserLogoutFailure extends UserState {
  final String errMessage;

  UserLogoutFailure({required this.errMessage});
}

///
final class OpenAssignmentSuccess extends UserState {
  final List<OpenAssignmentModel> assignmentR;

  OpenAssignmentSuccess({required this.assignmentR});
}

final class OpenAssignmentLoading extends UserState {}

final class OpenAssignmentFailure extends UserState {
  final String errMessage;

  OpenAssignmentFailure({required this.errMessage});
}


///--------------------------------Doctor--------------------------------------




