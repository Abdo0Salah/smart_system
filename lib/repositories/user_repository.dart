import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../apiModels/sign_in_model.dart';
import '../apiModels/sign_up_model.dart';
import '../apiModels/subjectRegisteration_model.dart';
import '../cache/cache_helper.dart';
import '../core/api/api_consumer.dart';
import '../core/api/end_ponits.dart';
import '../core/errors/exceptions.dart';

class UserRepository {
  final ApiConsumer api;

  UserRepository({required this.api});


 /// STUDENT
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

      await   CacheHelper().saveData(key: ApiKey.token, value: user.token);
      await  CacheHelper().saveData(key: ApiKey.id, value: decodedToken["jti"]);
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
    required String level,
    required String term,
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
          ApiKey.role: role,
        },
      );
      final signUPModel = SignUpModel.fromJson(response);
      return Right(signUPModel);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  // Future<Either<String, UserModel>> getUserProfile() async {
  //   try {
  //     final response = await api.get(
  //       EndPoint.getUserDataEndPoint(
  //         CacheHelper().getData(key: ApiKey.id),
  //       ),
  //     );
  //     return Right(UserModel.fromJson(response));
  //   } on ServerException catch (e) {
  //     return Left(e.errModel.errorMessage);
  //   }
  // }

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
