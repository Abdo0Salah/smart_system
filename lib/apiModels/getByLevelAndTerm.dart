class GetCoursesbyLevelAndTermModel {


  int? courseId;
  String? name;
  int? level;
  int? term;
  int? hours;
  String? code;
  int? deptId ;
  String? link;

  GetCoursesbyLevelAndTermModel({
    this.courseId,
    this.name,
    this.level,
    this.term,
    this.hours,
    this.code,
    this.deptId,
    this.link,
  });

  factory GetCoursesbyLevelAndTermModel.fromJson(Map<String, dynamic> json) {
    return GetCoursesbyLevelAndTermModel(
      courseId: json['courseId'] is int ? json['courseId'] : int.tryParse(json['courseId'].toString()),
      name: json['name'],
      level: json['level'] is int ? json['level'] : int.tryParse(json['level'].toString()),
      term: json['term'] is int ? json['term'] : int.tryParse(json['term'].toString()),
      hours: json['hours'] is int ? json['hours'] : int.tryParse(json['hours'].toString()),
      code: json['code'],
      deptId : json['deptId'] is int ? json['deptId'] : int.tryParse(json['deptId'].toString()),
      link: json['link'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseId': courseId,
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
    return 'SubjectRegistrationModel(courseId: $courseId, name: $name, level: $level, term: $term, hours: $hours, code: $code,deptId:$deptId, link: $link)';
  }
}