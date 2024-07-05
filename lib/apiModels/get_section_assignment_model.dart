class GetAllSectionAssignmentsModel {
  int? id;
  String? title;
  String? description;
  String? deadline;
  bool? isSubmitted;
  String? createdAt;

  GetAllSectionAssignmentsModel({
    this.id,
    this.title,
    this.description,
    this.deadline,
    this.isSubmitted,
    this.createdAt,

  });

  factory GetAllSectionAssignmentsModel.fromJson(Map<String, dynamic> json) {
    return GetAllSectionAssignmentsModel(
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
    return 'GetAllSectionAssignmentsModel(id: $id, title: $title, description: $description, deadline: $deadline, isSubmitted: $isSubmitted, createdAt: $createdAt,)';
  }
}
