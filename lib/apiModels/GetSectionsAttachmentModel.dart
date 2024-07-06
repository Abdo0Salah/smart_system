class GetSectionsAttachmentModel{
  int? id;
  String? title;
  String? uploadedBy;


  GetSectionsAttachmentModel({
    this.id,
    this.title,
    this.uploadedBy,

  });

  factory GetSectionsAttachmentModel.fromJson(Map<String, dynamic> json) {
    return GetSectionsAttachmentModel(
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
    return 'GetSectionsAttachmentModel(id: $id, title: $title, uploadedBy: $uploadedBy)';
  }
}
