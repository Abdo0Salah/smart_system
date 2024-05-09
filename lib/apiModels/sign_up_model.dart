
import '../core/api/end_ponits.dart';

class SignUpModel {
  final String message;
  final String status;

  SignUpModel({required this.message,required this.status});
  factory SignUpModel.fromJson(Map<String, dynamic> jsonData) {
    return SignUpModel(
      message: jsonData[ApiKey.message],
      status: jsonData[ApiKey.status],
    );
  }
}

