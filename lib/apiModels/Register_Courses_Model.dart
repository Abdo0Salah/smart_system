
import '../core/api/end_ponits.dart';

class RegisterCoursesModel {
  final String message;
  final String status;

  RegisterCoursesModel({required this.message, required this.status});

  factory RegisterCoursesModel.fromJson(Map<String, dynamic> jsonData) {
    return RegisterCoursesModel(
      message: jsonData[ApiKey.message],
      status: jsonData[ApiKey.status],
    );
  }
}
