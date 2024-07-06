class OpenAssignmentModel {
  int? id;
  String? fileName;
  String? fileExtension;


  OpenAssignmentModel({
    this.id,
    this.fileName,
    this.fileExtension,


  });

  factory OpenAssignmentModel.fromJson(Map<String, dynamic> json) {
    return OpenAssignmentModel(
      id: json['id'],
      fileName: json['fileName'],
      fileExtension: json['fileExtension'],


    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fileName': fileName,
      'fileExtension': fileExtension,

    };
  }

  @override
  String toString() {
    return 'OpenAssignmentModel(id: $id, fileName: $fileName, fileExtension: $fileExtension)';
  }
}
