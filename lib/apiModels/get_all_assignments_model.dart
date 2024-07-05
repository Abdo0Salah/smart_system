class GetAllAssignmentsModel {
  int? id;
  String? title;
  String? description;
  String? deadline;
  bool? isSubmitted;
  String? createdAt;
  String? fileName;
  String? fileContent;
  String? fileExtension;

  GetAllAssignmentsModel({
    this.id,
    this.title,
    this.description,
    this.deadline,
    this.isSubmitted,
    this.createdAt,
    this.fileName,
    this.fileContent,
    this.fileExtension,
  });

  factory GetAllAssignmentsModel.fromJson(Map<String, dynamic> json) {
    return GetAllAssignmentsModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      deadline: json['deadline'],
      isSubmitted: json['isSubmitted'],
      createdAt: json['createdAt'],
      fileName: json['fileName'],
      fileContent: json['fileContent'],
      fileExtension: json['fileExtension'],
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
      'fileName': fileName,
      'fileContent': fileContent,
      'fileExtension': fileExtension,
    };
  }

  @override
  String toString() {
    return 'GetAllAssignmentsModel(id: $id, title: $title, description: $description, deadline: $deadline, isSubmitted: $isSubmitted, createdAt: $createdAt,fileName:$fileName, fileContent: $fileContent, fileExtension: $fileExtension)';
  }
}
