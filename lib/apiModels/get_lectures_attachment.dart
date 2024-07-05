class GetLecturesAttachmentModel{
  int? id;
  String? title;
  String? uploadedBy;


  GetLecturesAttachmentModel({
    this.id,
    this.title,
    this.uploadedBy,

  });

  factory GetLecturesAttachmentModel.fromJson(Map<String, dynamic> json) {
    return GetLecturesAttachmentModel(
      id: json['id'],
      title: json['title'],
      uploadedBy: json['uploadedBy'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'uploadedBy': uploadedBy,

    };
  }

  @override
  String toString() {
    return 'GetLecturesAttachmentModel(id: $id, title: $title, uploadedBy: $uploadedBy)';
  }
}
