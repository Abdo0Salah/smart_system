import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../apiModels/GetFilesDataOfLecturesAttachmentModel.dart';
import '../apiModels/GetSectionsAttachmentModel.dart';
import '../apiModels/GetfilesdataofSectionsattachmentModel.dart';
import '../apiModels/OpenAssignmentModel.dart';
import '../apiModels/Register_Courses_Model.dart';
import '../apiModels/getByLevelAndTerm.dart';
import '../apiModels/get_all_assignments_model.dart';
import '../apiModels/get_all_meetings_model.dart';
import '../apiModels/get_groups_model.dart';
import '../apiModels/get_lecture_assignment_model.dart';
import '../apiModels/get_lectures_attachment.dart';
import '../apiModels/get_section_assignment_model.dart';
import '../apiModels/sign_in_model.dart';
import '../apiModels/sign_up_model.dart';
import '../apiModels/subjectRegisteration_model.dart';
import '../apiModels/update_user_model.dart';
import '../apiModels/user_model.dart';
import '../cache/cache_helper.dart';
import '../core/api/api_consumer.dart';
import '../core/api/end_ponits.dart';
import '../core/errors/exceptions.dart';

class UserRepository {
  final ApiConsumer api;

  UserRepository({required this.api});

  /// STUDENT
  /// ----------------------login-----------------------------
  Future<Either<String, SignInModel>> signIn({
    required String userName,
    required String password,
  }) async {
    try {
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKey.userName: userName,
          ApiKey.password: password,
        },
      );
      final user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.token);
      //print(decodedToken);
      await CacheHelper().saveData(key: ApiKey.token, value: user.token);
      await CacheHelper().saveData(
          key: ApiKey.id,
          value: decodedToken[
              "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier"]);
      await CacheHelper().saveData(key: 'isLoggedIn', value: true);

      return Right(user);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, SignUpModel>> signUp({
    required String userName,
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required String role,
    required String phone,
    required int level,
    required int term,
    required String gender,
    required String ssn,
  }) async {
    try {
      final response = await api.post(
        EndPoint.signUp,
        //isFromData: true,
        data: {
          ApiKey.userName: userName,
          ApiKey.name: name,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
          ApiKey.level: level,
          ApiKey.term: term,
          ApiKey.phone: phone,
          ApiKey.gender: gender,
          ApiKey.ssn: ssn,
          ApiKey.role: role,
        },
      );
      final signUPModel = SignUpModel.fromJson(response);
      return Right(signUPModel);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, void>> logout() async {
    try {
      await api.post(EndPoint.logout);
      await CacheHelper().removeData(key: ApiKey.token);
      await CacheHelper().removeData(key: ApiKey.id);
      await CacheHelper().saveData(key: 'isLoggedIn', value: false);
      return Right(null);
    } on DioException catch (e) {
      handleDioExceptions(e);
      return Left("Unexpected error occurred.");
    }
  }

  Future<bool> isLoggedIn() async {
    return CacheHelper().getData(key: 'isLoggedIn') ?? false;
  }

  ///-----------------------------profile--------------------------

  Future<Either<String, UserModel>> getUserProfile() async {
    try {
      final response = await api.get(
        EndPoint.getUserDataEndPoint(
          CacheHelper().getData(key: ApiKey.id),
        ),
      );

      if (response == null) {
        throw Exception('API response is null');
      }
      final userr = UserModel.fromJson(response);
      await CacheHelper()
          .saveData(key: ApiKey.userNameSaved, value: userr.name);
      await CacheHelper()
          .saveData(key: ApiKey.userEmailSaved, value: userr.email);
      await CacheHelper()
          .saveData(key: ApiKey.userGenderSaved, value: userr.gender);
      await CacheHelper()
          .saveData(key: ApiKey.userTermSaved, value: userr.term);
      await CacheHelper()
          .saveData(key: ApiKey.userLevelSaved, value: userr.level);
      return Right(UserModel.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    } catch (e) {
      // Handle other exceptions
      return Left(e.toString());
    }
  }

  Future<Either<String, UpdateUserModel>> updateUser({
    required String id,
    required String name,
    required String email,
    required String universityEmail,
    required String password,
    required String ssn,
    required String phone,
    required String gender,
    required int level,
    required int term,
    required String parentPhone,
    required String parentEmail,
  }) async {
    try {
      final response = await api.put(
        EndPoint.ubdateUserDataEndPoint(
          CacheHelper().getData(key: ApiKey.id),
        ),
        data: {
          "name": name,
          "email": email,
          "universityEmail": universityEmail,
          "password": password,
          "ssn": ssn,
          "phone": phone,
          "gender": gender,
          "level": level,
          "term": term,
          "parentPhone": parentPhone,
          "parentEmail": parentEmail,
        },
      );
      if (response == null) {
        throw Exception('API response is null');
      }
      final updateUserModel = UpdateUserModel.fromJson(response);
      return Right(updateUserModel);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  ///--------------------------Registeration------------------------------

  Future<Either<String, List<SubjectRegisterationModel>>>
      SubjectRegisteration() async {
    try {
      final response = await api.get(
        EndPoint.subjectRegisteration,
      );
      // final subject = SubjectRegisterationModel.fromJson(response);
      // print(subject.listOfObject?[0]);
      List<dynamic> parsedList = response as List<dynamic>;
      List<SubjectRegisterationModel> subjectList = parsedList
          .map((json) => SubjectRegisterationModel.fromJson(json))
          .toList();
      return Right(subjectList);
      // return Right(subject as List<SubjectRegisterationModel>);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, RegisterCoursesModel>> registerCourses(
    List<int> courseIds,
  ) async {
    try {
      final response = await api.post(
        EndPoint.registerCourses(
          CacheHelper().getData(key: ApiKey.id),
        ),
        data: courseIds,
        options: Options(
          contentType: 'application/json',
        ),
      );
      if (response != null) {
        return Right(RegisterCoursesModel.fromJson(response));
      } else {
        return Left('No response from server');
      }
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }


  ///--------------------------Materials------------------------------


  Future<Either<String, List<GetCoursesbyLevelAndTermModel>>>
  GetCoursesbyLevelAndTerm() async {
    try {
      final response = await api.get(
        EndPoint.getCoursesbyLevelAndTerm(
        id:  CacheHelper().getData(key: ApiKey.id),
        level:CacheHelper().getData(key: ApiKey.selectedLevel)??CacheHelper().getData(key: ApiKey.userLevelSaved),
        term: CacheHelper().getData(key: ApiKey.selectedTerm)??CacheHelper().getData(key: ApiKey.userTermSaved),
        ),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetCoursesbyLevelAndTermModel> CourseList = parsedList
          .map((json) => GetCoursesbyLevelAndTermModel.fromJson(json))
          .toList();
      return Right(CourseList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }





  Future<Either<String, List<GetGroupsModel>>>
  getGroups() async {
    try {
      final response = await api.get(
        EndPoint.getGroups(
            courseId:   CacheHelper().getData(key: ApiKey.courseIdSaved),
        ),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetGroupsModel> GroupsList = parsedList
          .map((json) => GetGroupsModel.fromJson(json))
          .toList();
      return Right(GroupsList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }



  Future<Either<String, List<GetAllMeetingsModel>>>
  GetAllMeetings() async {
    try {
      final response = await api.get(
        EndPoint.getAllMeetings(CacheHelper().getData(key: ApiKey.groupIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetAllMeetingsModel> meetingsList = parsedList
          .map((json) => GetAllMeetingsModel.fromJson(json))
          .toList();
      return Right(meetingsList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }


  Future<Either<String, List<GetLecturesAttachmentModel>>>
  GetLecturesAttachment() async {
    try {
      final response = await api.get(
        EndPoint.getLecturesAttachment(CacheHelper().getData(key: ApiKey.groupIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetLecturesAttachmentModel> AttachmentList = parsedList
          .map((json) => GetLecturesAttachmentModel.fromJson(json))
          .toList();
      return Right(AttachmentList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }
  Future<Either<String, List<GetSectionsAttachmentModel>>>
  GetSectionsAttachment() async {
    try {
      final response = await api.get(
        EndPoint.getSectionsAttachment(CacheHelper().getData(key: ApiKey.groupIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetSectionsAttachmentModel> AttachmentList = parsedList
          .map((json) => GetSectionsAttachmentModel.fromJson(json))
          .toList();
      return Right(AttachmentList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, List<GetfilesdataoflecturesattachmentModel>>>
  GetFilesDataOfLecturesAttachment() async {
    try {
      final response = await api.get(
        EndPoint.getFilesDataOfLecturesAttachment(CacheHelper().getData(key: ApiKey.lectureIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetfilesdataoflecturesattachmentModel> filesdataList = parsedList
          .map((json) => GetfilesdataoflecturesattachmentModel.fromJson(json))
          .toList();
      return Right(filesdataList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }
  Future<Either<String, List<Getfilesdataofsectionsattachmentmodel>>>
  GetFilesDataOfSectionsAttachment() async {
    try {
      final response = await api.get(
        EndPoint.getFilesDataOfSectionsAttachment(CacheHelper().getData(key: ApiKey.sectionIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<Getfilesdataofsectionsattachmentmodel> filesdataList = parsedList
          .map((json) => Getfilesdataofsectionsattachmentmodel.fromJson(json))
          .toList();
      return Right(filesdataList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }



///-------------------------Assignments--------------------///

  Future<Either<String, List<GetAllAssignmentsModel>>>
  GetAllAssignments() async {
    try {
      final response = await api.get(
        EndPoint.getAllAssignment(CacheHelper().getData(key: ApiKey.groupIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetAllAssignmentsModel> assignmentList = parsedList
          .map((json) => GetAllAssignmentsModel.fromJson(json))
          .toList();
      return Right(assignmentList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }



  Future<Either<String, List<GetAllLectureAssignmentsModel>>>
  GetAllLectureAssignments() async {
    try {
      final response = await api.get(
        EndPoint.getAllLectureAssignments(CacheHelper().getData(key: ApiKey.groupIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetAllLectureAssignmentsModel> assignmentLectureList = parsedList
          .map((json) => GetAllLectureAssignmentsModel.fromJson(json))
          .toList();
      return Right(assignmentLectureList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }



  Future<Either<String, List<GetAllSectionAssignmentsModel>>>
  GetAllSectionAssignments() async {
    try {
      final response = await api.get(
        EndPoint.getAllSectionAssignments(CacheHelper().getData(key: ApiKey.groupIdSaved),),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<GetAllSectionAssignmentsModel> assignmentSectionList = parsedList
          .map((json) => GetAllSectionAssignmentsModel.fromJson(json))
          .toList();
      return Right(assignmentSectionList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }







  Future<Either<String, List<OpenAssignmentModel>>>
  OpenAssignment() async {
    try {
      final response = await api.get(
        EndPoint.openAssignment(
         // assignmentId: 1
            assignmentId:   CacheHelper().getData(key: ApiKey.assignmentIdSaved),
          ),
          options: Options(
            headers: {
              'Authorization': 'Bearer ${CacheHelper().getData(key: ApiKey.token)}',
            },
          ),
      );
      List<dynamic> parsedList = response as List<dynamic>;
      List<OpenAssignmentModel>assignmentsList = parsedList
          .map((json) => OpenAssignmentModel.fromJson(json))
          .toList();
      return Right(assignmentsList);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }








  /// PARENT

  // Future<Either<String, SignInModel>> signInParent({
  //   required String userNameParent,
  //   required String passwordParent,
  // }) async {
  //   try {
  //     final response = await api.post(
  //       EndPoint.signInParent,
  //       data: {
  //         ApiKey.userNameParent: userNameParent,
  //         ApiKey.passwordParent: passwordParent,
  //       },
  //     );
  //     final user = SignInModel.fromJson(response);
  //     final decodedToken = JwtDecoder.decode(user.token);
  //
  //     CacheHelper().saveData(key: ApiKey.token, value: user.token);
  //     CacheHelper().saveData(key: ApiKey.id, value: decodedToken["jti"]);
  //
  //     return Right(user);
  //   } on ServerException catch (e) {
  //     return Left(e.errModel.errorMessage);
  //   }
  // }
}
