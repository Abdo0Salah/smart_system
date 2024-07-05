class GetfilesdataoflecturesattachmentModel{
  int? id;
  String? fileName;
  String? description;


  GetfilesdataoflecturesattachmentModel({
    this.id,
    this.fileName,
    this.description,

  });

  factory GetfilesdataoflecturesattachmentModel.fromJson(Map<String, dynamic> json) {
    return GetfilesdataoflecturesattachmentModel(
      id: json['id'],
      fileName: json['fileName'],
      description: json['description'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fileName': fileName,
      'description': description,

    };
  }

  @override
  String toString() {
    return 'GetfilesdataoflecturesattachmentModel(id: $id, fileName: $fileName, description: $description)';
  }
}
