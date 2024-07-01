// class SubjectRegisterationModel {
//   SubjectRegisterationModel({
//      this.id,
//       this.name,
//       this.level,
//       this.term,
//       this.hours,
//       this.code,
//       this.link,
//   }
//   );
//
//   SubjectRegisterationModel.fromJson(dynamic json) {
//     id = json['id'];
//     name = json['name'];
//     level = json['level'];
//     term = json['term'];
//     hours = json['hours'];
//     code = json['code'];
//     link = json['link'];
//   }
//   int? id;
//   String? name;
//   String? level;
//   String? term;
//   String? hours;
//   String? code;
//   String? link;
//
//
//
//  }
class SubjectRegisterationModel {
  // List<dynamic>? listOfObject;
  //
  // SubjectRegisterationModel({
  //   required this.listOfObject,
  // });
  //
  // factory SubjectRegisterationModel.fromJson(dynamic json) {
  //   List<dynamic>? parsedList = json['listOfObject'] != null ? List<dynamic>.from(json['listOfObject']) : null;
  //   return SubjectRegisterationModel(
  //     listOfObject: parsedList,
  //   );
  // }
  //
  // Map<String, dynamic> toJson() {
  //   return {
  //     'listOfObject': listOfObject,
  //   };
  // }

  int? id;
  String? name;
  int? level;
  int? term;
  int? hours;
  String? code;
  int? deptId ;
  String? link;

  SubjectRegisterationModel({
    this.id,
    this.name,
    this.level,
    this.term,
    this.hours,
    this.code,
    this.deptId,
    this.link,
  });

  factory SubjectRegisterationModel.fromJson(Map<String, dynamic> json) {
    return SubjectRegisterationModel(
      id: json['id'],
      name: json['name'],
      level: json['level'],
      term: json['term'],
      hours: json['hours'] is int ? json['hours'] : int.tryParse(json['hours'].toString()),
      code: json['code'],
      deptId : json['deptId'],
      link: json['link'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'level': level,
      'term': term,
      'hours': hours,
      'code': code,
      'deptId':deptId,
      'link': link,
    };
  }

  @override
  String toString() {
    return 'SubjectRegistrationModel(id: $id, name: $name, level: $level, term: $term, hours: $hours, code: $code,deptId:$deptId, link: $link)';
  }
}
