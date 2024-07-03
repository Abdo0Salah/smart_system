
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
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

  UserRepository( {required this.api});


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
      //print(decodedToken);
      await   CacheHelper().saveData(key: ApiKey.token, value: user.token);
      await CacheHelper().saveData(key: ApiKey.id, value: decodedToken["http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier"]);
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
///profile
//   Future<Either<String, UserModel>> getUserProfile() async {
//     try {
//       final response = await api.get(
//         EndPoint.getUserDataEndPoint(
//           // CacheHelper().getData(key: ApiKey.id),
//         ),
//       );
//       return Right(UserModel.fromJson(response));
//     } on ServerException catch (e) {
//       return Left(e.errModel.errorMessage);
//     }
//   }

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
        await CacheHelper().saveData(key: ApiKey.userNameSaved, value: userr.name);
       await  CacheHelper().saveData(key: ApiKey.userEmailSaved, value: userr.email);
      print( "7777777777777777777777777777${CacheHelper().getData(key: ApiKey.userNameSaved)}");
      print ("${CacheHelper().getData(key: ApiKey.userEmailSaved)}");
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
