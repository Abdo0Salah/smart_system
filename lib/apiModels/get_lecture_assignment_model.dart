class GetAllLectureAssignmentsModel {
  int? id;
  String? title;
  String? description;
  String? deadline;
  bool? isSubmitted;
  String? createdAt;

  GetAllLectureAssignmentsModel({
    this.id,
    this.title,
    this.description,
    this.deadline,
    this.isSubmitted,
    this.createdAt,

  });

  factory GetAllLectureAssignmentsModel.fromJson(Map<String, dynamic> json) {
    return GetAllLectureAssignmentsModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      deadline: json['deadline'],
      isSubmitted: json['isSubmitted'],
      createdAt: json['createdAt'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'deadline': deadline,
      'isSubmitted': isSubmitted,
      'createdAt': createdAt,

    };
  }

  @override
  String toString() {
    return 'GetAllLectureAssignmentsModel(id: $id, title: $title, description: $description, deadline: $deadline, isSubmitted: $isSubmitted, createdAt: $createdAt,)';
  }
}
