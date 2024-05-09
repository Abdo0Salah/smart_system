
import '../core/api/end_ponits.dart';

class SignInModel {
  final String expiration;
  final String token;

  SignInModel({required this.expiration, required this.token});

  factory SignInModel.fromJson(Map<String, dynamic> jsonData) {
    return SignInModel(
      expiration: jsonData[ApiKey.expiration],
      token: jsonData[ApiKey.token],
    );
  }
}
