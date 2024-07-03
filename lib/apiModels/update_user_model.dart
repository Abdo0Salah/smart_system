class UpdateUserModel {
  String? name;
  String? email;
  String? universityEmail;
  String? password;
  String? ssn;
  String? phone;
  String? gender;
  int? level;
  int? term;
  String? parentPhone;
  String? parentEmail;

  UpdateUserModel(
      {this.name,
        this.email,
        this.universityEmail,
        this.password,
        this.ssn,
        this.phone,
        this.gender,
        this.level,
        this.term,
        this.parentPhone,
        this.parentEmail});

  UpdateUserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    universityEmail = json['universityEmail'];
    password = json['password'];
    ssn = json['ssn'];
    phone = json['phone'];
    gender = json['gender'];
    level = json['level'];
    term = json['term'];
    parentPhone = json['parentPhone'];
    parentEmail = json['parentEmail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['universityEmail'] = this.universityEmail;
    data['password'] = this.password;
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