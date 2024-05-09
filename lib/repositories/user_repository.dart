import 'package:dartz/dartz.dart';

import 'package:jwt_decoder/jwt_decoder.dart';

import '../apiModels/sign_in_model.dart';
import '../apiModels/sign_up_model.dart';
import '../cache/cache_helper.dart';
import '../core/api/api_consumer.dart';
import '../core/api/end_ponits.dart';
import '../core/errors/exceptions.dart';



class UserRepository {
  final ApiConsumer api;

  UserRepository({required this.api});
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
      final decodedToken = JwtDecoder.decode(user!.token);

       CacheHelper().saveData(key: ApiKey.token, value: user.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken["jti"]);

     // print("888888888888888888888888888888888888888${ decodedToken["jti"]}");


      return Right(user);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, SignUpModel>>signUp({
    required String userName,
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required String role,
    //required XFile profilePic,
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
      //    ApiKey.location:
           //   '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
       //   ApiKey.profilePic: await uploadImageToAPI(profilePic)
        },
      );
      final signUPModel = SignUpModel.fromJson(response);
      return  Right(signUPModel);
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
}
