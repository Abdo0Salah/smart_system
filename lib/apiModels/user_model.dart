// import '../core/api/end_ponits.dart';
//
// class UserModel {
//   final int id;
//   final String name;
//   final String email;
//   final String universityEmail;
//   final String ssn;
//   final String phone;
//   final String gender;
//   final int level;
//   final int term;
//   final String parentPhone;
//   final String parentEmail;
//
//
//
//
//   UserModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.universityEmail,
//     required this.ssn,
//     required this.phone,
//     required this.gender,
//     required this.level,
//     required this.term,
//     required this.parentPhone,
//     required this.parentEmail,
//   });
//
//   // factory UserModel.fromJson(Map<String, dynamic> jsonData) {
//   //   return UserModel(
//   //     id: jsonData['user'][ApiKey.idProfile],
//   //     name: jsonData['user'][ApiKey.name],
//   //     email: jsonData['user'][ApiKey.userName],
//   //     universityEmail: jsonData['user'][ApiKey.universityEmail],
//   //     ssn: jsonData['user'][ApiKey.ssnProfile],
//   //     phone: jsonData['user'][ApiKey.phoneProfile],
//   //     gender: jsonData['user'][ApiKey.genderProfile],
//   //     level: jsonData['user'][ApiKey.levelProfile],
//   //     term: jsonData['user'][ApiKey.termProfile],
//   //     parentPhone: jsonData['user'][ApiKey.parentPhone],
//   //     parentEmail: jsonData['user'][ApiKey.parentEmail],
//   //
//   //   );
//   // }
//
//   factory UserModel.fromJson(Map<String, dynamic>? jsonData) {
//     final user = jsonData?['user'] ?? {};
//     return UserModel(
//       id: user[ApiKey.id] ?? 0,
//       name: user[ApiKey.name] ?? 'soha',
//       email: user[ApiKey.userName] ?? 'soso',
//       universityEmail: user[ApiKey.universityEmail] ?? '',
//       ssn: user[ApiKey.ssn] ?? '',
//       phone: user[ApiKey.phone] ?? '',
//       gender: user[ApiKey.gender] ?? '',
//       level: user[ApiKey.level] ?? 0,
//       term: user[ApiKey.term] ?? 0,
//       parentPhone: user[ApiKey.parentPhone] ?? '',
//       parentEmail: user[ApiKey.parentEmail] ?? '',
//     );
//   }
// }
import '../core/api/end_ponits.dart';

class UserModel {
  int? id;
  String? name;
  String? email;
  String? universityEmail;
  String? ssn;
  String? phone;
  String? gender;
  int? level;
  int? term;
  String? parentPhone;
  String? parentEmail;

  UserModel(
      {this.id,
        this.name,
        this.email,
        this.universityEmail,
        this.ssn,
        this.phone,
        this.gender,
        this.level,
        this.term,
        this.parentPhone,
        this.parentEmail});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json[ApiKey.id];
    name = json[ApiKey.name];
    email = json[ApiKey.email];
    universityEmail = json[ApiKey.universityEmail];
    ssn = json[ApiKey.ssn];
    phone = json[ApiKey.phone];
    gender = json[ApiKey.gender];
    level = json[ApiKey.level];
    term = json[ApiKey.term];
    parentPhone = json[ApiKey.parentPhone];
    parentEmail = json[ApiKey.parentEmail];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['universityEmail'] = this.universityEmail;
    data['ssn'] = this.ssn;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['level'] = this.level;
    data['term'] = this.term;
    data['parentPhone'] = this.parentPhone;
    data['parentEmail'] = this.parentEmail;
    return data;
  }
}