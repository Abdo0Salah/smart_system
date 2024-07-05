class GetGroupsModel {


  int? id;
  String? name;
  String? description;
  int? courseId;

  GetGroupsModel({
    this.id,
    this.name,
    this.description,
    this.courseId,
  });

  factory GetGroupsModel.fromJson(Map<String, dynamic> json) {
    return GetGroupsModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      courseId: json['courseId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'courseId': courseId,
    };
  }

  @override
  String toString() {
    return 'SubjectRegistrationModel(id: $id, name: $name, description: $description, courseId: $courseId)';
  }
}
