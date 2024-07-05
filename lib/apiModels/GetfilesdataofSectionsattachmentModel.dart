class Getfilesdataofsectionsattachmentmodel{
  int? id;
  String? fileName;
  String? description;


  Getfilesdataofsectionsattachmentmodel({
    this.id,
    this.fileName,
    this.description,

  });

  factory Getfilesdataofsectionsattachmentmodel.fromJson(Map<String, dynamic> json) {
    return Getfilesdataofsectionsattachmentmodel(
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
    return 'Getfilesdataofsectionsattachmentmodel(id: $id, fileName: $fileName, description: $description)';
  }
}
